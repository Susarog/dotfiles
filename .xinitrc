#!/bin/sh


if [-d /etc/X11/xinit/xinitrc.d]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
end
end

xsetroot -cursor_name left_ptr
dbus-run-session bspwm

