#!/bin/sh 
# switch mouse side buttons
logitech_mouse_id=$(xinput | grep "USB OPTICAL MOUSE" | awk {'print substr($6,4,2)'})
# echo $logitech_mouse_id > ~/temp/logitech_mouse_id
xinput set-button-map $logitech_mouse_id 1 2 3 4 5 6 7 9 8 10 11 12 13
