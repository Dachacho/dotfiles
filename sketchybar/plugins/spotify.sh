#!/usr/bin/env bash

# Check if Spotify is running
if ! pgrep -x "Spotify" > /dev/null; then
  sketchybar --set "$NAME" drawing=off
  exit 0
fi

STATE=$(osascript -e 'tell application "Spotify" to player state as string' 2>/dev/null)

if [ "$STATE" = "playing" ]; then
  ARTIST=$(osascript -e 'tell application "Spotify" to artist of current track as string' 2>/dev/null)
  TRACK=$(osascript -e 'tell application "Spotify" to name of current track as string' 2>/dev/null)
  sketchybar --set "$NAME" label="$ARTIST - $TRACK" drawing=on
else
  sketchybar --set "$NAME" drawing=off
fi
