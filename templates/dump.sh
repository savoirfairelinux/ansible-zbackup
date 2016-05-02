#!/bin/sh
TIMESTAMP=`date '+%Y%m%d%H%M%S'`
zbackup backup "{{ zbackup_storage_path }}/repo/backups/archive-${TIMESTAMP}"
echo ${TIMESTAMP} > "{{ zbackup_storage_path }}/latest_timestamp"
