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