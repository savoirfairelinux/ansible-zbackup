#!/bin/bash
TIMESTAMP=`cat "{{ zbackup_storage_path }}/latest_timestamp"`
zbackup restore "{{ zbackup_storage_path }}/repo/backups/archive-${TIMESTAMP}"
