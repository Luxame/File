#!/bin/bash

rsync -azP --delete ssh_config_name:/opt/backup/*.tar.gz dest_dir