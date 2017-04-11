#!/usr/bin/env bash


while [ true ] 
do
    if [[ $(wmctrl -l | grep -e "Telegram (") ]]
    then
        telegramName=`wmctrl -l | grep -o -e "Telegram (.*"`;
        setUrgentCommand="wmctrl -F -r \"$telegramName\" -b add,demands_attention";
        eval $setUrgentCommand;
    fi
    sleep 2;
done

