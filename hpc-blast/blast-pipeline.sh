#!/bin/sh

# Step1: get the env variables and create a list of files
source ./config.sh

# Step 2: get all of the fasta files for input
cd "$FASTA_DIR"
export FILES_LIST="$FASTA_DIR/files-list"
pwd
ls *.fasta | sed "s/^\.\///" > $FILES_LIST

# Step 3: split the fasta files into smaller chunks
$SCRIPT_DIR/run-fasta-splitter.sh

# Step 4: run blast on each of the file chunks
while read FILE; do
    export FILE="$FILE"
    cd $SPLIT_FA_DIR
    export SPLIT_FILES_LIST="$SPLIT_FA_DIR/split.$FILE"
    ls $FILE.* > $SPLIT_FILES_LIST
    NUM_SPLIT_FILES=$(wc -l $SPLIT_FILES_LIST | cut -d ' ' -f 1)

    ## run blast on each of the smaller chunks against a blast database
    JOB_ID1=$(qsub -v SCRIPT_DIR,SPLIT_FA_DIR,BLAST,EVAL,BLASTDB,BLAST_OUT_DIR,FILE -N blast -e "$STDERR_DIR" -o "$STDOUT_DIR" -J 1-$NUM_SPLIT_FILES $SCRIPT_DIR/run-blast.sh)

    ## parse the blast results for each of the chunked files
    JOB_ID2=$(qsub -v SCRIPT_DIR,BLAST_OUT_DIR,FILE -W depend=afterany:$JOB_ID1 -e "$STDERR_DIR" -o "$STDOUT_DIR" -J 1-$NUM_SPLIT_FILES $SCRIPT_DIR/run-parse-blast.sh)

done < $FILES_LIST

cd "$BLAST_OUT_DIR"
cat *day*parsed > day.parsed
cat *night*parsed > night.parsed
