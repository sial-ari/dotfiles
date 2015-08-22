xmodmap ~/.Xmodmap_judith
/home/sial/.bin/xcape -e '0x1234=Return'
xrdb ~/.Xresources
/bin/emacs --daemon=server &
nm-applet &
parcellite &
redshift-gtk &
xautolock -time 2 -locker slock &
exec awesome
