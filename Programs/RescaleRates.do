//This takes a socsim output and rescales the age-parity-status fertility rates accordingly

args r race divorcescenario parity y
//r: run number
//race: race (white or black)
//divorcescenario: current, constant, double, quadple
//parity: 0 (don't use it) 1 (use it)
//y: year
*local r=1
*local race "white"
*local divorcescenario "current"
*local parity=1
*local y=1901

clear all
set seed 20120616
if c(username)=="amv5430"{
	cd D:\Dropbox\DemographyLab\USnoKin\Inputs2SOCSIM
	global localdir="D:\StataLocalD"
	}
else{
	cd ./Inputs2SOCSIM
	global localdir="/hdir/0/verdery"
	}	

////////////////////
//Define npflag if it's parity, define month from year
	//if parity is off, save the rates with a noparity flag
	if (`parity'==0){
		local npflag="_noparity"
		}
	else{
		local npflag=""
		}
	//define month
	local m=(`y'-1779)*12
	
////////////////////////////
//Store parity proportion adjustments in mata (see makeHFC_agebyparitybylevel)
capture prog drop parityadjust
capture prog def parityadjust
args tfr year
	//all
	preserve
		qui use ../Data/ParityByAgeGeneratingData, clear
		qui reg pr b14.age##b1.order##c.tfr if ccode=="USA"
		qui keep if ccode=="USA"
		keep age order
		qui bysort age order: keep if _n==1
		qui gen tfr=`tfr'
		qui predict yhat
		sort order age
		qui putmata parityadjust=(order age yhat), replace
	restore
	//make sure lowest value is 0
	mata: parityadjust[.,3]=parityadjust[.,3]:-min(parityadjust[.,3])
	//make sure it's proportion of tfr
	mata: parityadjust[.,3]=parityadjust[.,3]:/sum(parityadjust[.,3])
	//For the noparity portion, recompute as just age
	mata: ageadjust=parityadjust
	mata: ageadjust[1..37,3]=parityadjust[1..37,3]+parityadjust[38..74,3]+parityadjust[75..111,3]
	mata: ageadjust=ageadjust[1..37,.]
end

////////////////////
//Get the TFR for this year and adjust parity/age curve
	qui use ../Data/tfr, clear
	keep year *`race'
	qui keep if year==`y'
	qui su tfr
	local tfr=r(mean)
	
	//run parity adjustment model
	parityadjust `tfr' `y'
	
	//get the parity proportions and adjust to monthly version
	//divide by 12 to convert to a monthly rate
	//note: conversion of rates (r/12) is different 
	//than conversion of probabilities (1-(1-p)^(1/12))
	forv i=0/2{
		mata: asfr`i'=select(parityadjust[.,3]:*`tfr',parityadjust[.,1]:==(`i'+1)):/12
		mata: _editmissing(asfr`i',0)	
		}
	mata: asfr_=(ageadjust[.,3]:*`tfr'):/12
	
	//add in year and month of interval ending indicators
		//note: the HFD data are ages of experiencing, not top of interval needed 
		//by socsim so I add 1 year to account for socsim structure
		//also need to add 0-14 interval is 0 and 51-100 interval is 0
	foreach i in 0 1 2 _{
		mata: asfr`i'=(15::51),J(rows(asfr`i'),1,0),asfr`i'
		mata: asfr`i'=(14,0,0)\asfr`i'\(100,0,0)
		}
		
////////////////////
//Get and scale by marrital status breakdown
	use ../Data/pr2married, clear
	keep year *`race'
	qui su pct2mar if year==`y'
	local pct2mar=r(mean)
	qui su pct2sng if year==`y'
	local pct2sng=r(mean)
	qui su pct2wid if year==`y'
	local pct2wid=r(mean)
	
	//scale accordingly
	foreach s in mar sng wid{
		foreach o in 0 1 2 _{
			mata: asfr`o'_`s'=asfr`o'
			mata: asfr`o'_`s'[.,3]=asfr`o'_`s'[.,3]:*`pct2`s''
			}
		}
		
////////////////////////////
//Program to write the rate files
capture mata mata drop writerates()
mata
function writerates(fname,commentline,idline,data)
{
	fh=fopen(fname,"rw")
	fseek(fh, 0, 1)
	fput(fh,commentline)
	fput(fh,idline)
	for (i=1;i<=rows(data);i++){
		fput(fh,invtokens(strofreal(round(data[i,.],0.00001))))
		}
	fclose(fh)
}
end
				
////////////////////
//Get the proportions in each group	and rescale rates accordingly

//Remove the otx, opox and pyr files
capture rm ../Results/results_`race'`divorcescenario'`npflag'_r`r'.otx
capture rm ../Results/results_`race'`divorcescenario'`npflag'_r`r'.opox
capture rm ../Results/results_`race'`divorcescenario'`npflag'_r`r'.pyr

sleep 250

//Bring in marriage data
	qui insheet using ../Results/results_`race'`divorcescenario'`npflag'_r`r'.omar, clear
	qui replace v1=trim(itrim(v1))
	local k=1
	foreach i in mid wpid hpid dstart dend rend wprior hprior{
		qui gen `i'=word(v1,`k')
		local ++k
		}
	drop v1 mid hpid rend wprior hprior
	qui destring, replace

//Set end month to last of data+1 if it's still going on
	qui replace dend=3373 if dend==0
	qui putmata marrs=(wpid dstart dend), replace

//Load up opop data
	qui insheet using ../Results/results_`race'`divorcescenario'`npflag'_r`r'.opop, clear
	qui replace v1=trim(itrim(v1))
	local k=1
	foreach i in pid fem group nev dob mom pop nesibm nesibp lborn marid mstat dod fmult{
		qui gen `i'=word(v1,`k')
		local ++k
		}
	drop v1 group nev pop nesibm nesibp lborn marid mstat fmult
	qui destring, replace

//Get women's parity prior to this year
	capture drop parity
	preserve
		qui gen parity=dob<(`m'-11)
		qui keep if parity>0 & parity!=.
		qui su parity
		if (r(N)>0){
			keep mom parity
			collapse (sum) parity, by(mom) fast
			qui recode parity .=. 0=0 1=1 2/max=2
			rename mom pid
			sort pid
			qui saveold ${statalocal}\tmp, replace `versioncontrol'
			local dontdo=0
			}
		if (r(N)==0){
			local dontdo=1
			}
	restore
	sort pid

//Only need women from here on out
	qui keep if fem==1
	
//Get year of birth and age
	qui gen yob=1779+floor(dob/12)
	capture drop age
	qui gen age=.
	qui replace age=`y'-yob if dob<=`m' & dod==0

//Only need those aged 14-51 from here on
	qui keep if age>=14 & age<=51
	
//Attach parity to the woman if there are children born
	if (`dontdo'==0){
		qui merge pid using ${statalocal}\tmp
		//2s are women who had kids but already died
		qui drop if _merge==2
		//3s are living moms who had kids
		//1s are living women with no prior kid
		drop _merge
		qui replace parity=. if age==.
		qui replace parity=0 if parity==. & age!=.
		}
	//if no children, don't do it
	if (`dontdo'==1){
		qui gen parity=0
		}
	
//Get women who were married as of last year, previously married as of last year
	mata currwives=select(marrs[.,1],((marrs[.,2]:<=(`m'-12)):*(marrs[.,3]:>(`m'-12))))
	mata: currwives=currwives\.
	mata exwives=select(marrs[.,1],((marrs[.,2]:<=(`m'-12)):*(marrs[.,3]:<(`m'-12))))
	mata: exwives=exwives\.
	preserve
		//current
		clear
		qui getmata currwives
		rename currwives pid
		qui duplicates drop
		sort pid
		qui su pid
		local nplus1=r(N)+1
		qui set obs `nplus1'
		qui saveold ${statalocal}\tmp1, replace `versioncontrol'
		sleep 100
		//ex
		clear
		qui getmata exwives
		rename exwives pid
		qui duplicates drop
		sort pid
		qui su pid
		local nplus1=r(N)+1
		qui set obs `nplus1'
		qui saveold ${statalocal}\tmp2, replace `versioncontrol'
		sleep 100
	restore
	
//Attach marital status in last year
	//current
	capture drop currmarried
	sort pid
	qui merge 1:1 pid using ${statalocal}\tmp1
	qui drop if _merge==2
	qui recode _merge 1=0 3=1
	rename _merge currmarried
	capture lab drop _merge
	//ex
	capture drop exmarried
	sort pid
	qui merge 1:1 pid using ${statalocal}\tmp2
	qui drop if _merge==2
	qui recode _merge 1=0 3=1
	rename _merge exmarried
	capture lab drop _merge
	//status
	qui gen mstat=(currmarried==1)+2*(exmarried==1)
	//ppl can be both ex and current, recode them to current
	qui recode mstat .=. 0=0 1=1 2=2 3=2

//check
	*table age parity mstat
	
//Collapse to get sums in each category and minimize data size
	gen n=1
	qui collapse (sum) n, by(mstat parity age) fast
	qui su n
	bysort age: egen all=total(n)
	qui replace n=n/all
	drop all
	
//Store adjustment factors
	*qui save ../Results/AdjustmentFactors/`race'`npflag'`divorcescenario'_y`y', replace

//Put rescaled rates into mata, where rf=1/(n/all) and rescaled rate=rf*rate
	//note: deal with intervals 0-14 and 51-100 as per above
	local m=-1
	foreach i in sng mar wid{
	*foreach i in sng mar {
		local ++m
		foreach p in 0 1 2 _ {
			mata: rescale`p'_`i'=J(39,3,.)
			mata: rescale`p'_`i'[1,.]=14,0,0
			mata: rescale`p'_`i'[39,.]=100,0,0
			forv a=15/51{
				if ("`p'"!="_"){
					qui su n if mstat==`m' & parity==`p' & age==`a'
					local n=r(mean)
					}
				else{
					qui su n if mstat==`m' & age==`a'
					local n=r(sum)
					}
				if (r(N)){
					mata: rescale`p'_`i'[`a'-13,.]=`a',0,round((1/`n')*asfr`p'_`i'[`a'-13,3],0.00001)
					}
				else{
					mata: rescale`p'_`i'[`a'-13,.]=`a',0,round(asfr`p'_`i'[`a'-13,3],0.00001)
					}
				}
			}
		}
	//make sure you didn't adjust any past 1.0
	foreach i in sng mar{
		foreach p in 0 1 2 _ {
			mata: rescale`p'_`i'[.,3]=((rescale`p'_`i'[.,3]:<=1):*rescale`p'_`i'[.,3]):+(rescale`p'_`i'[.,3]:>1)
			}
		}

////////////////////
//Write the rates using rescaled numbers
capture rm "${localdir}//asfr_`race'`npflag'_y`y'"

//if parity, write for each birth order (note parity-birth order difference)
if (`parity'==1){
	forv p=0/2{
		//married people
		mata: writerates("${localdir}//asfr_`race'`npflag'_y`y'","*parity `p' married","birth 1 F married `p'",rescale`p'_mar)
		sleep 10
		//single people
		mata: writerates("${localdir}//asfr_`race'`npflag'_y`y'","*parity `p' single","birth 1 F single `p'",rescale`p'_sng)
		sleep 10
		//widowed/divorced people
		mata: writerates("${localdir}//asfr_`race'`npflag'_y`y'","*parity `p' widowed","birth 1 F widowed `p'",rescale`p'_wid)
		sleep 10
		mata: writerates("${localdir}//asfr_`race'`npflag'_y`y'","*parity `p' divorced","birth 1 F divorced `p'",rescale`p'_wid)
		sleep 10
		}
	}
//if not, give age specific rates only
if (`parity'==0){
	//married people
	mata: writerates("${localdir}//asfr_`race'`npflag'_y`y'","*parity all married","birth 1 F married 0",rescale__mar)
	sleep 10
	//single
	mata: writerates("${localdir}//asfr_`race'`npflag'_y`y'","*parity all single","birth 1 F single 0",rescale__sng)
	sleep 10
	//widowed/divorced
	mata: writerates("${localdir}//asfr_`race'`npflag'_y`y'","*parity all widowed","birth 1 F widowed 0",rescale__wid)
	sleep 10
	mata: writerates("${localdir}//asfr_`race'`npflag'_y`y'","*parity all divorced","birth 1 F divorced 0",rescale__wid)
	sleep 10
	}
//change eol and transfer
sleep 500
qui changeeol "${localdir}//asfr_`race'`npflag'_y`y'" ./fertilityRates/asfr_`race'`npflag'_y`y', eol(unix) replace
sleep 10
rm "${localdir}//asfr_`race'`npflag'_y`y'"

//change the file names of the prior results files to last
capture confirm file "../Results/last.omar"
if (!_rc){
	rm "../Results/last.omar"
	}
capture confirm file "../Results/last.opop"
if (!_rc){
	rm "../Results/last.opop"
	}
sleep 500
qui changeeol "../Results/results_`race'`divorcescenario'`npflag'_r`r'.omar" "../Results/last.omar", eol(unix) replace
qui changeeol "../Results/results_`race'`divorcescenario'`npflag'_r`r'.opop" "../Results/last.opop", eol(unix) replace
sleep 500
