#!/bin/bash
SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`
TIMESTAMP=`cat "${SCRIPTPATH}/latest_timestamp"`
zbackup --non-encrypted restore "${SCRIPTPATH}/repo/backups/archive-${TIMESTAMP}" {% if zbackup_compress_output %}| gzip -c{% endif %}
