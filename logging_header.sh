mkdir -p $PBS_O_WORKDIR/log
LOGFILE=$PBS_O_WORKDIR/log/$PBS_JOBNAME"."$PBS_JOBID".log"

##########################################
#                                        #
#   Output some useful job information.  #
#                                        #
##########################################
echo ------------------------------------------------------ >> $LOGFILE
echo -n 'Job is running on node '; cat $PBS_NODEFILE >> $LOGFILE
echo ------------------------------------------------------ >> $LOGFILE
echo PBS: qsub is running on $PBS_O_HOST >> $LOGFILE
echo PBS: originating queue is $PBS_O_QUEUE >> $LOGFILE
echo PBS: executing queue is $PBS_QUEUE >> $LOGFILE
echo PBS: working directory is $PBS_O_WORKDIR >> $LOGFILE
echo PBS: execution mode is $PBS_ENVIRONMENT>> $LOGFILE
echo PBS: job identifier is $PBS_JOBID >> $LOGFILE
echo PBS: job name is $PBS_JOBNAME>> $LOGFILE
echo PBS: node file is $PBS_NODEFILE>> $LOGFILE
echo PBS: current home directory is $PBS_O_HOME>> $LOGFILE
echo PBS: PATH = $PBS_O_PATH>> $LOGFILE
echo ------------------------------------------------------>> $LOGFILE
echo >> $LOGFILE
echo "GLOBAL PARAMETERS">> $LOGFILE
echo "---------------------------" >> $LOGFILE
echo "Node       : "$HOSTNAME >> $LOGFILE
echo "Arch       : "$ARCH >> $LOGFILE
echo "---------------------------" >> $LOGFILE
echo "RunDir     : "$PBS_O_WORKDIR >> $LOGFILE

echo "Modules: loading" >> $LOGFILE