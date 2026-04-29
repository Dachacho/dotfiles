#!/usr/bin/env bash

# Only update prev and current workspace (2 items instead of 5)
sketchybar \
  --set "space.$FOCUSED_WORKSPACE" \
    background.color=0xfffabd2f \
    icon.drawing=off \
    label.drawing=on \
    label="$FOCUSED_WORKSPACE" \
    label.color=0xff282828 \
  --set "space.$AEROSPACE_PREV_WORKSPACE" \
    background.color=0xff3c3836 \
    icon.drawing=on \
    icon="$AEROSPACE_PREV_WORKSPACE" \
    icon.color=0xffa89984 \
    label.drawing=off
