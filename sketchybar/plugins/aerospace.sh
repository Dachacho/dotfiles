#!/usr/bin/env bash

# Fast update - only change colors, no aerospace calls
sketchybar \
  --set "space.$FOCUSED_WORKSPACE" \
    background.color=0xfffabd2f \
    icon.color=0xff282828 \
    label.color=0xff282828 \
  --set "space.$AEROSPACE_PREV_WORKSPACE" \
    background.color=0xff3c3836 \
    icon.color=0xffa89984 \
    label.color=0xffa89984
