#!/usr/bin/env zsh

# Kill all previously running rofi instances to avoid issues
killall rofi

# Run a new Rofi instance in `window` mode (Window Switcher)
rofi -show window
