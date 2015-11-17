#!/bin/bash

#PBS -W group_list=anling
#PBS -q windfall
#PBS -l jobtype=cluster_only
#PBS -l select=1:ncpus=2:mem=4gb
#PBS -l place=pack:shared
#PBS -l walltime=24:00:00
#PBS -l cput=24:00:00
#PBS -M brooker@email.arizona.edu
#PBS -m bea

# BLAST parameters
NUM_THREADS=2    # make sure this is requested in the above "select"
DESC=10
ALN=10
MAX_HSPS=10

module load blast
cd "$SPLIT_FA_DIR"
FASTA="$SPLIT_FA_DIR/$FILE.${PBS_ARRAY_INDEX}"

# run blast on each file chunk
$BLAST -query $FASTA -db $BLASTDB -evalue $EVAL -out $BLAST_OUT_DIR/$FILE.${PBS_ARRAY_INDEX}.blastout -max_hsps $MAX_HSPS -num_descriptions $DESC -num_alignments $ALN -num_threads $NUM_THREADS
