#!/usr/bin/sh
ls -1 wiki/ > wiki/index_of_files.pd
sed 's/^\(.*\)\(___\)/- [\1](\&/' -i wiki/index_of_files.pd
sed 's/$/)/' -i wiki/index_of_files.pd
