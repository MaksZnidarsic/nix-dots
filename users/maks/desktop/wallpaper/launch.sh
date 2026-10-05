


killall -q swaybg .swaybg-wrapped

swaybg -i $(find $HOME/.config/wallpaper/papers/* | shuf -n 1)
