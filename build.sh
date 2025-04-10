:

# TODO file completion

BUILD_DIR=~/docs/wiki_out/
FILENAME=$1
FILE="${FILENAME%.*}"


pandoc $FILENAME metadata.yaml \
	--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex+fenced_code_attributes+pipe_tables \
	--to=latex \
	--output=$BUILD_DIR/pdf/$FILE.pdf \
	--pdf-engine=xelatex

	# --include-in-header="layout.tex"

	# --defaults=metadata.yaml \
