#!/usr/bin/sh

cd ${HOME}/docs/indepthwiki/ || exit
files=$(ls -1 wiki/*.pd)
build_dir=${HOME}/docs/wiki_out/

for file_pd in $files
do
	file="$(basename ${file_pd%.*})"
	${HOME}/docs/indepthwiki/scripts/backlinks.sh $file_pd
	backlink_file=${HOME}/docs/indepthwiki/backlinks/${file}_backlink.pd
	pandoc $file_pd $backlink_file metadata.yaml \
		--lua-filter=${HOME}/docs/indepthwiki/filters/include-files.lua \
		--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex+fenced_code_attributes+pipe_tables \
		--verbose \
		--output=${build_dir}html/$file.html \
		--pdf-engine=xelatex \
		--lua-filter=${HOME}/docs/indepthwiki/filters/links-to-html.lua
done
