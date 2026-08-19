## 

xrdb -load ~/.Xresources

## apps
export BROWSER="firefox"

## locale
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_COLLATE="C"

# path
export PATH="$HOME/bin:$PATH"

xset +fp /home/mns/.fonts
xset fp rehash
xset m 2 2
#xset b off

# $(which xidle) -program '/usr/bin/xlock -mode star' -timeout 900 &
#xrandr --output HDMI-1 --brightness 0.95
# xrandr --output eDP-1 --gamma 1:1:1 --brightness 1
# xgamma -gamma 1.1:1.1:1.1

if [ -x /usr/local/bin/dbus-launch -a -z "${DBUS_SESSION_BUS_ADDRESS}" ]; then
	eval `dbus-launch --sh-syntax --exit-with-x11`
fi

setxkbmap -model abnt2 -layout br
#setxkbmap -layout us -variant intl

# export _JAVA_AWT_WM_NONREPARENTING=1
#wmname LG3D

dunst -conf $HOME/Documents/dotfiles/dunstrc &
xcompmgr -n &

# touchpad
# syndaemon -d -i 0.5 -R
# synclient TapButton1=1
# synclient PalmDetect=1
# synclient TapButton2=3
#synclient TapButton3=2

# wallpaper
sh ~/.fehbg

# keyboard changes
xmodmap ~/.Xmodmap

# dwm #
# /usr/local/bin/slstatus &
# exec /usr/local/bin/dwm
