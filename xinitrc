xmodmap ~/.Xmodmap
xrandr --output LVDS1 --left-of VGA1
/home/sial/.bin/xcape -e '0x1234=Return'
xrdb ~/.Xresources
xinput -disable 10
emacs --daemon=server
exec awesome
