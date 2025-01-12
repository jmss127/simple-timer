#!/bin/bash

# timer
# pass time in minutes as argument e.g. timer.sh 3
# echo value passed to script
# TODO change read to input choice of seconds, minutes or hours
# eg timer -s 20, timer -m 20, timer -h 2.5 =(150mins)
echo "$1" - mins                        # echo value passed to script
timeS=$(($1*60))                        # multiply value by 60
for i in $(seq "$timeS" -1 1)           # set countdown sequence by 1
    do echo -ne "\r$i "                 # echo value of countdown - secs
    sleep 1                             # 1 second delay
done
echo "timer up!"
# play sound effect and suppress messages
# requires alsa-utils
aplay -q some-sound-file.wav       # play sound effect and suppress messages
exit 0
# add timer to your aliases in bashrc
