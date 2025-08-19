#!/usr/bin/sh

cd ~/docs/indepthwiki/ || exit
files=$(ls -1 wiki/*.pd)
build_dir=~/docs/wiki_out/

for file_pd in $files
do
	file="$(basename ${file_pd%.*})"
	${HOME}/docs/indepthwiki/scripts/backlinks.sh $file_pd
	backlink_file=${HOME}/docs/indepthwiki/backlinks/${file}_backlink.pd
	pandoc $file_pd $backlink_file metadata.yaml \
		--lua-filter=${HOME}/docs/indepthwiki/filters/transclude.lua \
		--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex+fenced_code_attributes+pipe_tables \
		--to=latex \
		--verbose \
		--output=${build_dir}pdf/$file.pdf \
		--pdf-engine=xelatex \
		--lua-filter=${HOME}/docs/indepthwiki/filters/links-to-pdf.lua
done
