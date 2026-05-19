BUILD_DIR := ~/docs/wiki_out/

all:
	echo "TODO"

%: %.pd
	pandoc $@.pd \
			--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex+fenced_code_attributes \
			--to=latex \
			--output=$(BUILD_DIR)/pdf/$@.pdf \
			--pdf-engine=xelatex \
			--include-in-header="layout.tex"
