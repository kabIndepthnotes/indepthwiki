#!/usr/bin/sh

cd ~/docs/indepthwiki/ || exit
files=$(ls -1 *.pd)
build_dir=~/docs/wiki_out/

for file_pd in $files
do
	file="${file_pd%.*}"
	pandoc $file_pd metadata.yaml \
		--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex+fenced_code_attributes+pipe_tables \
		--to=latex \
		--verbose \
		--output=${build_dir}pdf/$file.pdf \
		--pdf-engine=xelatex
done
