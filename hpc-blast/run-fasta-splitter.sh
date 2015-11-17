#!/bin/bash

source /usr/share/Modules/init/bash
module load perl

if [[ ! -d "$SPLIT_FA_DIR" ]]; then
    echo Cannot find faSplit \"$SPLIT_FA_DIR\"
    mkdir -p $SPLIT_FA_DIR
fi

if [[ ! -e "$FILES_LIST" ]]; then
    echo Cannot find files list \"$FILES_LIST\"
    exit 1
fi

cd $FASTA_DIR
while read FILE; do
   echo $FILE
   $SCRIPT_DIR/01-fasta-splitter.pl -n $SPLIT_READ_CT -o $SPLIT_FA_DIR $FILE
done < $FILES_LIST
