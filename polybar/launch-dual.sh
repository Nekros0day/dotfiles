#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
#polybar top -c /home/nekros/.config/polybar/nekconfig-dual
#polybar bottom -c /home/nekros/.config/polybar/nekconfig-dual
polybar bottom &
polybar top &

echo "Bars launched..."
