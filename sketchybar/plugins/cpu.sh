#!/usr/bin/env bash

# Cheap CPU sample: read kernel counters via iostat instead of spawning top.
# iostat waits ~1s for its second sample, but uses almost no CPU.
CPU=$(/usr/sbin/iostat -c 2 | tail -1 | awk '{print $4 + $5}')
RAM=$(/usr/bin/memory_pressure | awk '/System-wide memory free percentage:/ {print 100 - int($5)}')

CPU=${CPU:-0}
RAM=${RAM:-0}

sketchybar --set "$NAME" label="CPU ${CPU}% RAM ${RAM}%"
