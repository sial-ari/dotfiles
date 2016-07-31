setxkbmap -model pc104 -layout us,bg -variant ,phonetic 
setxkbmap -option grp:shifts_toggle
xmodmap ~/.Xmodmap
~/.bin/xcape -e '0x1234=Return'
xrdb ~/.Xresources
/bin/emacs --daemon=server &
unclutter &
pnmixer &
blueman &
nm-applet &
#nagstamon &
parcellite &
redshift &
xautolock -time 2 -locker slock &
exec awesome
