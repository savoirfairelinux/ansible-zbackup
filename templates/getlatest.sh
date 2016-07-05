#!/bin/bash

GZIP_OUTPUT=0

while getopts ":z" opt; do
  case $opt in
    z)
      GZIP_OUTPUT=1
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done

SCRIPT=`readlink -f "$0"`
SCRIPTPATH=`dirname $SCRIPT`
TIMESTAMP=`cat "${SCRIPTPATH}/latest_timestamp"`

if [ $GZIP_OUTPUT == 1 ]; then
    zbackup --non-encrypted restore "${SCRIPTPATH}/repo/backups/archive-${TIMESTAMP}" | gzip -c
else
    zbackup --non-encrypted restore "${SCRIPTPATH}/repo/backups/archive-${TIMESTAMP}"
fi
