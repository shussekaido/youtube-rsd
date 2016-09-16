#!/bin/sh
youtube-dl -o '%(uploader)s/%(upload_date)s - %(title)s.%(ext)s' -f 140 --batch-file 'config/urls.txt' --download-archive 'config/history.txt' --exec 'config/process.sh {}'
