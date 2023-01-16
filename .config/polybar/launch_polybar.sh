#!/usr/bin/env fish

for m in (polybar --list-monitors | cut -d":" -f1);
    MONITOR=$m polybar --reload example --config=~/.config/polybar/config.ini&
end
