#print the last known statistics of the job (memory usage, cpu time, etc...)
echo >> $LOGFILE
qstat -f $PBS_JOBID >> $LOGFILE

echo "$PBS_JOBID ($PBS_JOBNAME) @ `hostname` at `date` in "$RUNDIR" END" >> $LOGFILE
echo "`date +"%d.%m.%Y-%T"`" >> $LOGFILE
echo ------------------------------------------------------ >> $LOGFILE
echo "JOB FINISHED" >> $LOGFILE
echo ------------------------------------------------------ >> $LOGFILE
