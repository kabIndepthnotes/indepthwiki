#!/usr/bin/sh
for file in $(ls *.pd -1)
do
	sed -n '/^#[ ]*Backlinks[ ]*$/,$p' $file
done
