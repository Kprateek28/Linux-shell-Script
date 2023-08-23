#!/bin/bash

#$Revision:001$
#$ Thu Aug 17 11:32:55 IST 2023

#Variables
PATH = /mnt/c/Users/kumar/Desktop/linux
DAYS = 5
DEPTH = 1
RUN = 0

#check if directory is present or not
if [ ! -d $PATH ]
then
        echo "directory does not exist: $PATH"
        exit 1
fi

# create archive if not present
if [ ! -d $PATH/archive ]
then
        mkdir $BASE/archive
fi

# Find the list of files larger thn 7MB
for i in `find $PATH -maxdepth $DEPTH -type f -size +7M`
do 
    if [ $RUN -eq 0 ]
    then
            echo "[$(date  "%Y-%m-%d %H:%M:%S")] archiving $i ==> $PATH/archive"
            gzip $i || exit 1
            mv $i.gz $PATH/archive || exit 1
    fi

done

