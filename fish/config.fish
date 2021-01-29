set TTY1 (tty)
if test -z "$DISPLAY"; and test $TTY1 = "/dev/tty1"
    killall autostart.sh	    
    # rm ~/.swayupdlog
    # touch ~/.swayupdlog
    rm ~/.sysupdlog
    touch ~/.sysupdlog
    
end

set fish_greeting
#chmod 0700 /tmp/swaytmp
#set -x XDG_RUNTIME_DIR /run/user/dante

set -x GTK_THEME ~/.themes/WhiteSur-dark
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_CURRENT_DESKTOP Unity
set -x MOZ_ENABLE_WAYLAND 1
set -x BEMENU_BACKEND wayland
set -x XDG_SESSION_TYPE wayland
set -x MOZ_ACCELERATED 1
set -x MOZ_WEBRENDER 1
set -x GDK_BACKEND wayland
set -x QT_WAYLAND_DISABLE_WINDOWDECORATION 1
set -x QT_SCALE_FACTOR 1
set -x QT_QPA_PLATFORM wayland
set -x QT_QPA_PLATFORMTHEME qt5ct
set -x SDL_VIDEODRIVER wayland
set -x CLUTTER_BACKEND wayland
set -x NIX_LINK $HOME/.nix-profile
set -x GOPATH /home/dante/pr/go
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin


# set -x QT_STYLE_OVERRIDE kvantum
if test -z "$DISPLAY"; and test $TTY1 = "/dev/tty1"
    # dbus-launch --exit-with-session sway
    exec dbus-launch --sh-syntax --exit-with-session sway > ~/.swaylog
    # exec sway
    
end
exit
