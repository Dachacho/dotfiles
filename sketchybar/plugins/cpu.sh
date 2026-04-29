#!/usr/bin/env bash

CPU=$(top -l 1 | grep -E "^CPU" | awk '{print int($3)}')
RAM=$(memory_pressure | grep "System-wide memory free percentage:" | awk '{print 100 - int($5)}')

sketchybar --set "$NAME" label="CPU ${CPU}% RAM ${RAM}%"
