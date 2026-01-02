#!/usr/bin/sh
ls *.pd  | sed -E 's/.*___([0-9]{8}_[0-9]{4}_[0-9]{2}).*/\1 &/' | sort -n| cut -d' ' -f2-
