#!/usr/bin/env bash
killall -q polybar


while pgrep -u $UID -x polybar >/dev/null; do sleep1; done

polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown
