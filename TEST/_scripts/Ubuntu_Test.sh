$TestSettings
NumThreads=(1 3 5 10 15 20 25)
StrDate=$(date +'%F')
OS="Ubuntu"

$Directory
DirData="../_bin/"
DirOutput="../Ubuntu/"$StrDate'/'
DirInput="../input_samples/"
DirMEGA="./MEGASOFT.o"

$DataSet
NumStudies=8
NumSNPs=1000

$MEGASOFT_Options
_method=mcmc
_samples=1000000
_seed=0
_sigma=0.05
_alpha=1
_beta=5
_thres=1.0


$Performance_Test
cp ../../MEGASOFT/MEGASOFT.o ./MEGASOFT.o

for nthr in ${NumThreads[@]}
do
    DirIn=$DirInput'inputMS_'$NumStudies'_'$NumSNPs'.txt'
    DirHan=$DirData"HanEskinPvalueTable.txt"
    DirOut=$DirOutput'posterior_'$NumStudies'_'$NumSNPs'_'$OS'_'$nthr".txt"
    DirLog=$DirOutput'Log_'$NumStudies'_'$NumSNPs'_'$OS'_'$nthr".log"
    
    Script='sudo '$DirMega'
    echo $DirLog

    


done


