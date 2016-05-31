xrdb ~/.Xresources
i3 --shmlog-size=30000000 &
sleep 5 && feh --bg-scale .config/awesome/themes/chris/wallpaper.jpg
setxkbmap -option caps:super
xkbset nullify lock
tail -f /dev/null
