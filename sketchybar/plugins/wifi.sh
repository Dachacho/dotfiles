#!/usr/bin/env bash

WIFI=$(/System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -I | awk -F': ' '/ SSID/{print $2}')

if [ -z "$WIFI" ]; then
  sketchybar --set "$NAME" label="Offline" icon=󰖪
else
  sketchybar --set "$NAME" label="$WIFI" icon=󰖩
fi
