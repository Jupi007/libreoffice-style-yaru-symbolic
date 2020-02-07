#!/bin/bash

for f in $(find ./ -name '*.svg'); do
	#filename=$(basename "$f")
	name="${f%.*}"
    inkscape -z $f -e "./../build/$name.png"
done
