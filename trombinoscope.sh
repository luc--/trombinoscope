#!/usr/bin/sh

photos_dir=$1
mkdir -p tmp_out

for filedir in "$photos_dir"/*
do
filename=$(basename "$filedir")
name="${filename%.*}"

montage -label "$name" "$filedir" tmp_out/"$filename"
done


montage tmp_out/* -geometry 500x500+4+4 trombinoscope.jpg

rm -rf tmp_out
