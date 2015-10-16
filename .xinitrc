xmodmap ~/.Xmodmap
xrandr --output HDMI2 --rotate left
xrandr --output VGA1 --left-of HDMI2
xrandr --output HDMI1 --left-of VGA1
/home/sial/.bin/xcape -e '0x1234=Return'
xrdb ~/.Xresources
/bin/emacs --daemon=server &
/usr/bin/xautolock -time 2 -locker slock &
/bin/unclutter &
/usr/bin/slack &
/bin/nagstamon &
/bin/parcellite &
exec awesome
