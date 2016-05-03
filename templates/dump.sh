#!/bin/sh
SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`
TIMESTAMP=`date '+%Y%m%d%H%M%S'`
zbackup backup "${SCRIPTPATH}/repo/backups/archive-${TIMESTAMP}"
echo ${TIMESTAMP} > "${SCRIPTPATH}/latest_timestamp"
