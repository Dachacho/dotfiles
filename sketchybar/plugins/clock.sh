#!/bin/sh

# Update exactly on the minute boundary so the clock never shows a stale minute.
PIDFILE="${TMPDIR:-/tmp}/sketchybar-clock-${USER}.pid"

old_pid=$(cat "$PIDFILE" 2>/dev/null)
if [ -n "$old_pid" ] && ps -p "$old_pid" -o command= 2>/dev/null | grep -q 'clock.sh'; then
  kill "$old_pid" 2>/dev/null
fi

echo $$ > "$PIDFILE"
trap 'rm -f "$PIDFILE"' EXIT

while true; do
  sketchybar --set "$NAME" label="$(date '+%d/%m %H:%M')"
  now=$(date +%s)
  sleep $((60 - now % 60))
done
