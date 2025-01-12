#!/bin/bash

# timer
# pass time in minutes as argument e.g. timer.sh 3
echo "$1" - mins                        # echo value passed to script
timeS=$(($1*60))                        # multiply value by 60
for i in $(seq "$timeS" -1 1)           # set countdown sequence by 1
    do echo -ne "\r$i "                 # echo value of countdown - secs
    sleep 1                             # 1 second delay
done
echo "timer up!"
aplay -q ~/Nevada/Scripts/timer/ding.wav       # play ding sound effect and suppress messages
exit 0
# add timer to your aliases in bashrc
