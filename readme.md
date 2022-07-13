## Adjustments to run this on Hydra01

Only Hydra01 has the right Stata installed (maybe 02 as well).

### Done:

#### Add socsim.exe to the base dir

so that the script can start socsim by calling it

#### change "socsim" to "./socsim.exe"

so that Windows knows which executable to execute

#### Move the stata "rescaleRates.do" to the directory where the script calls it

#### change the stata command from "stata-mp" to "C:\Program Files\Stata17\StataMP-64.exe "
now stata gets started from the script

#### replace 6000 absolute directories to relative directories

from 
/hdir/0/verdery/Dropbox/DemographyLab/USnoKin/

to 
./



## Problems and puzzling things

#### Socsim gives a syntax error on a line with only a comment!?

Solved: I converted the file with notepad++ from utf-8 to ASCII AND converted the line-endings to windows. Now it runs. Probably only one of those things is necessary


#### Socsim wants to read results from ./Results/last but there nothing produces output there

maybe the Stata-script copies the the socsim-result-files to this place?

...yes, if I understand it correctly, the stata-file does this. But I don't understand what it does exactly

#### The Stata-script uses data that is not in the download

see e.g. line 67 in the do-file: 
```
//Get the TFR for this year and adjust parity/age curve
	qui use ../Data/tfr, clear
```
it tries to load total fertility rates from the ../Data-directory