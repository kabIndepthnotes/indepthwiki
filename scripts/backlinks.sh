#!/usr/bin/sh

#TODO

filename="$(basename ${1%.*})"
wiki_dir=$(ls -1 ~/docs/indepthwiki/wiki/ )
backlink_file=backlinks/${filename}_backlink.pd

# echo $filename
# echo $wiki_dir
# echo $backlink_file

if [ -f $backlink_file ]; then
	rm $backlink_file
fi

echo "# backlinks" >> $backlink_file

for file in $wiki_dir
do
	if grep $filename wiki/$file; then
		# we want a new line as well hence echo
		echo "- $(my_linkify $file)" >> $backlink_file
	fi
done
