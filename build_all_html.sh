#!/usr/bin/sh

# TODO
files=$(ls ~/docs/indepthwiki/*.pd)
build_dir=~/docs/wiki_out/
file="${file%.*}"


for file_pd in $files
do
	pandoc $file_pd metadata.yaml \
		--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex+fenced_code_attributes+pipe_tables \
		--to=latex \
		--output=$build_dir/html/$file.html \
		--pdf-engine=xelatex
done

