#!/bin/bash

###############################################
# Written By Woland (but Adapted)

# Desc
#   generate graphs from vimwiki files
#   works only for .pd files

# Dependency:
#          POSIX Env
#          graphviz

# https://github.com/wolandark
# https://github.com/wolandark/Vimwiki-Graphviz
###############################################

layout="sfdp"
overlap="scalexy"
format="pd"

# while getopts "hnvxm" opt; do
#   case $opt in
#      h)
#       echo -e "\nUsage:\n\t $0 [-h This Msg] [-n Layout twopi] [-v overlap voronoi] [-x overlap scalexy] [-m operate on md files] \n"
#       exit 0
#       ;;
#     n)
#       layout="twopi"
#       ;;
#     v)
#       overlap="voronoi"
#       ;;
#     x)
#       overlap="scalexy"
#       ;;
#     m)
#       format="md"
#       ;;
#     \?)
#       echo "Invalid option: -$OPTARG" >&2
#       echo "Usage: $0 [-n]"
#       exit 1
#       ;;
#   esac
# done

shift $((OPTIND-1))

if [ "$#" -ne 0 ]; then
    echo "Usage: $0 [-n]"
    exit 1
fi

echo -e "digraph G {
fontname=\"Helvetica,Arial,sans-serif\"
node [fontname=\"Helvetica,Arial,sans-serif\" color=\"#00FF22\" fontcolor=\"#f8f8f8\"]
edge [fontname=\"Helvetica,Arial,sans-serif\" color=cyan fontcolor=\"#f8f8f8\"]
layout=$layout
graph [ranksep=3, overlap=$overlap bgcolor=\"#1e1e2e\" ];"

link1='\[[^]]*\]\(([^#][^)]*)\)'
link2='\[\[([^#].*?)\]\]'
IFS=$'\n'

for from in $(find . -name "*.pd" -type f | sort); do
	# echo "from: $from"
	# to_list=find links\
	# remove head\
	# seperate file from link type 1\
	# seperate file from link type 2
	# grep for no headers\

	   	# sed -E 's/\[|\]//g' |\
		# sed -E 's/\((.*\.pd)\)/\1/g' |\
	   	# grep -vE '^#' |\
			# sed -E 's/.*\((.*\.pd).*\).*/\1/g' |\

	to_list=$(sed -En "s/.*\[.*\]\((.*)\.pd\).*/\1/p" "$from" | sort | uniq)
	# echo "list: $to_list"
    for to in $to_list; do # for each file in to_list
        if [[ -f $to.pd ]] && [ $to.pd != "index.pd" ] && [ "$from" != "./index.pd" ]; then
				printf '    "%s" -> "%s"\n' $(basename -s .pd "$from") $to
		fi
    done
done
echo "}"

