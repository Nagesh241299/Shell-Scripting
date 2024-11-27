#!/bin/bash

source = /home/ubuntu/shell
dest = /home/ubuntu/backup

current_timestamp = $(date "+%Y-%m-%d-%h-%s")
backup_file = $dest/$current_timestamp.tgz

echo "Taking backup on $current_timestamp"

tar czf $backup_file --absolute-names $source

echo "Backup Complete"
