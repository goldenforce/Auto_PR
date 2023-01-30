#!/bin/bash
a1=`ls -t ../done/delta* | head -n1`
fgrep -v -f "$a1" "$2" > "$1"
