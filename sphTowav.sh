#!/bin/bash
# Make a copy of the data
#goes through all folders in current directory (*)
#and store data in directory.txt
find * -type f > directory.txt
#loop through the all files and make .wav file
while read file; do
  echo "$file converted"
  echo "new file name ${file%.sph}.wav"
  newfile=${file%.sph}.wav
  echo "$newfile"
  < /dev/null ffmpeg -i $file $newfile
done <directory.txt
