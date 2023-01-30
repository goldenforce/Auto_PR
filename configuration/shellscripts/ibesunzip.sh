#!/bin/bash
if [[ $1 == kp* ]]; then
echo "kp"
unzip -j "$1" *IDK.US *IDK.INT
fi
if [[ $1 == qf* ]]; then
echo "qf"
unzip -j "$1" *ID.US *ID.INT
fi
for f in *.INT; do mv -n "$f" "$f"_"$(date -r "$f" +"%Y%m%d%H%M%S")"; done
for f in *.US; do mv -n "$f" "$f"_"$(date -r "$f" +"%Y%m%d%H%M%S")"; done
