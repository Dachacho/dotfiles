#!/usr/bin/env bash

# Fast update - only change colors, no aerospace calls
sketchybar \
  --set "space.$FOCUSED_WORKSPACE" \
    background.color=0xff78a9ff \
    icon.color=0xff161616 \
    label.color=0xff161616 \
  --set "space.$AEROSPACE_PREV_WORKSPACE" \
    background.color=0xff282828 \
    icon.color=0xff525253 \
    label.color=0xff525253
