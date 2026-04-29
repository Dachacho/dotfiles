#!/usr/bin/env bash

WORKSPACES="1 2 3 4 5"

args=()
for sid in $WORKSPACES; do
  if [ "$sid" = "$FOCUSED_WORKSPACE" ]; then
    args+=(--set "space.$sid"
      background.color=0xfffabd2f
      icon.drawing=off
      label.drawing=on
      label="$sid"
      label.color=0xff282828)
  else
    args+=(--set "space.$sid"
      background.color=0xff3c3836
      icon.drawing=on
      icon="$sid"
      icon.color=0xffa89984
      label.drawing=off)
  fi
done

sketchybar "${args[@]}"
