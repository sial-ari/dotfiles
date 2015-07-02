xmodmap ~/.Xmodmap
xrandr --output VGA1 --rotate left
/home/sial/.bin/xcape -e '0x1234=Return'
xrdb ~/.Xresources
/bin/emacs --daemon=server &
exec awesome
