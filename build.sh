#!/usr/bin/sh


# TODO file completion

build_dir=~/docs/wiki_out/
filename=$1
file="$(basename ${filename%.*})"
backlink_file=backlinks/${file}_backlink.pd


pandoc $filename $backlink_file metadata.yaml \
	--lua-filter=filters/include-files.lua \
	--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex+fenced_code_attributes+pipe_tables \
	--to=latex \
	--verbose \
	--output=${build_dir}pdf/$file.pdf \
	--pdf-engine=xelatex \
	--lua-filter=filters/links-to-pdf.lua

	# --include-in-header="layout.tex"

	# --defaults=metadata.yaml \
