#! /bin/bash
mkdir mkv_audio
for i in *.cue; 
do 
cue="$i"; 
wav="`basename "$i" .cue`.wav"; 
shnsplit -d mkv_audio -f "$cue" -t "%n %t" "$wav"; 
done;
