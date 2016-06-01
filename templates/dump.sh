#!/bin/sh
SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`
TIMESTAMP=`date '+%Y%m%d%H%M%S'`
zbackup --non-encrypted backup "${SCRIPTPATH}/repo/backups/archive-${TIMESTAMP}" || exit 1
echo ${TIMESTAMP} > "${SCRIPTPATH}/latest_timestamp"
