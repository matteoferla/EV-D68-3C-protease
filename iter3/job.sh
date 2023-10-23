# how this job was actually run:
export JOB_SCRIPT=/data/xchem-fragalysis/shared/singularity.sh
export JOB_INNER_SCRIPT=/data/xchem-fragalysis/mferla/ASAP/D68.2/job.sh
export APPTAINER_CONTAINER=/data/xchem-fragalysis/shared/singularity/rockyplus.sif
# condor_submit /data/xchem-fragalysis/shared/target_script.condor -a 'Requirements=(machine == "orpheus-worker-67.novalocal")';

# Fluff
export HOST=${HOST:-$(hostname)}
export USER=${USER:-$(users)}
export HOME=${HOME:-$_CONDOR_SCRATCH_DIR}
export N_CORES=$(cat /proc/cpuinfo | grep processor | wc -l);
source /etc/os-release;
echo "Running script ${0} as $USER in $HOST which runs $PRETTY_NAME"

# conda go!
source /data/xchem-fragalysis/mferla/activate_conda.sh;

cd /data/xchem-fragalysis/mferla/ASAP/D68.2;
nice -19 fragmenstein \
--n_cores $(($N_CORES - 1)) \
--template reference.pdb \
--suffix _iter3 \
--hits D68_new.sdf \
--second_hits D68EV3CPROA.fragmented.sdf \
--weights weights.json \
--sw_databases REAL-Database-22Q1.smi.anon \
--weights weights.json \
--combination_size 2 \
--timeout 600;