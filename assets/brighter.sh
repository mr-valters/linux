#!/bin/bash

# Function to get current brightness
get_brightness() {
    xrandr --verbose | grep -i brightness | cut -f2 -d ' ' | head -n1
}

# Function to set brightness
set_brightness() {
    xrandr --output $(xrandr | grep " connected" | cut -f1 -d " ") --brightness $1
}

# Get current brightness
current=$(get_brightness)

# Increase brightness by 10%
new=$(echo "$current + 0.1" | bc)

# Ensure brightness doesn't exceed 1.0
if (( $(echo "$new > 1.5" | bc -l) )); then
    new=1.5
fi

# Set new brightness
set_brightness $new

echo "Brightness increased to $new"