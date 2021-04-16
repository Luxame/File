#!/bin/bash

# use rsync to download file
rsync -azP --delete ssh_config_name:/opt/backup/*.tar.gz dest_dir

# use find to delete old file
find bacupfile_dest -type f -mtime +2 -exec rm {} \;