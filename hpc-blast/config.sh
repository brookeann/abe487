#!/bin/bash

# directories we need
export CWD=$PWD
export SCRIPT_DIR="$CWD/scripts"
export FASTA_DIR="$CWD/data"
export STDERR_DIR="$CWD/std-err"
export STDOUT_DIR="$CWD/std-out"
export SPLIT_FA_DIR="$FASTA_DIR/faSplit"
export SPLIT_READ_CT="25000"
export BLAST_OUT_DIR="$CWD/blast-results"

# BLAST parameters
export EVAL="1e-10"
export BLAST="blastx"
export BLASTDB="$CWD/blastdb/CAM_PROJ_MarineMicrobes.pep.fa"

