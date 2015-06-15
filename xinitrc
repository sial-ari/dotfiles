xinput -disable 10
xrdb ~/.Xresources
~/.bin/kbd
emacs --daemon=server
xautolock -time 2 -locker slock &
exec awesome
