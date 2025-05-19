#!/usr/bin/sh

# TODO
# files=$(ls ~/docs/indepthwiki/*.pd)
# build_dir=~/docs/wiki_out/
# file="${file%.*}"

cd ~/docs/indepthwiki/ || exit
files=$(ls -1 *.pd)
build_dir=~/docs/wiki_out/

for file_pd in $files
do
	file="${file_pd%.*}"
	pandoc $file_pd metadata.yaml \
		--lua-filter=filters/include-files.lua \
		--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex+fenced_code_attributes+pipe_tables \
		--verbose \
		--output=${build_dir}html/$file.html \
		--pdf-engine=weasyprint \
		--lua-filter=filters/links-to-html.lua
done
