#!/usr/bin/sh


pandoc *.pd metadata.yaml \
	--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex+fenced_code_attributes+pipe_tables \
	--to=latex \
	--verbose \
	--output=~/docs/wiki_out/pdf/book.pdf \
	--pdf-engine=xelatex
