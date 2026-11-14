


killall -q eww .eww-wrapped

if [ -n $(pidof eww) ]; then eww daemon; fi

eww open-many bar # indicator
