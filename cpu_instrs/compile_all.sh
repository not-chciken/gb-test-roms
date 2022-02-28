#!/bin/bash

for filename in ./source/*.s; do
  echo "Compiling $filename..."
  s=$(basename "$filename")
  s="${s%.*}"
  wla-gb -D TEST_NAME="\"$s\"" -I ./source/ -I ./source/common/ -o test.o "$filename"
  echo "Linking..."
  wlalink ./source/linkfile "individual/$s.gb"
done
