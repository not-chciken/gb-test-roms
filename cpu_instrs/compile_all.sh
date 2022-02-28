#!/bin/bash

for filename in ./source/*.s; do
  echo "Compiling $filename..."
  s=$(basename "$filename")
  s="${s%.*}"
  wla-gb -I ./source/ -I ./source/common/ -o test.o "$filename"
  wlalink ./source/linkfile "individual/$s.gb"
done