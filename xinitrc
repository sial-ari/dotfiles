xinput -disable 10
xrdb ~/.Xresources
xmodmap ~/.Xmodmap
/home/sial/.bin/xcape -e '0x1234=Return'
emacs --daemon=server
#xautolock -time 2 -locker slock
exec awesome
