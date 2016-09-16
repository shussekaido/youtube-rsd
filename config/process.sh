#!/bin/sh

file=$1
tempname="${file%.*}.tmp"
newname="${tempname%.tmp}.aac"

mv "$file" "$tempname"
ffmpeg -y -i "$tempname" -filter:a "atempo=1.5,volume=5dB" -c:a libfdk_aac -profile:a aac_he -b:a 32k "$newname"
rm "$tempname"
cd "$(dirname "$file")"
id3v2 -2 -t "$(basename "${newname%.*}")" -A "Youtube" -a "${PWD##*/}" "$(basename "$newname")"
