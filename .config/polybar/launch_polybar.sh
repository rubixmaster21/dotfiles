#!/usr/bin/env fish

killall -q polybar

for m in (polybar --list-monitors | cut -d":" -f1);
    MONITOR=$m polybar --reload example --config=~/.config/polybar/config.ini&
end
