#!/bin/bash

INCLUDE_FILE="backup.includes"
LOG_FILE="rsync_baclup.log"
RSYNC=/usr/bin/rsync
#RSYNC_FLAGS="--archive --progress  --log-file=${LOG_FILE}"
RSYNC_FLAGS="--archive --progress"
DESTINATION=/Volumes/MedienEnc/

echo running
while read line
do
echo "${line}"
echo "\n"
echo ${RSYNC} ${RSYNC_FLAGS} ${line} ${DESTINATION}
${RSYNC} ${RSYNC_FLAGS} "${line}" ${DESTINATION}
done < ${INCLUDE_FILE}





