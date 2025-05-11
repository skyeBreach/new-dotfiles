#!/usr/bin/env zsh
#
#

# TODO: File Header Comment
# TODO: Output multiple formats to dunst notification
# TODO: Give "color" square icon to dunst
# TODO: Optional output type to clipboard
# TODO: Doc Comment and Refactor

#
cmd="xcolor"

#
killall xcolor -q

#
_XCOLOR_OUT=$(eval $cmd)

# Display the color information output via a dunst notification
dunstify "Selected Color:" $_XCOLOR_OUT

# Pass the output to the clipboard manager
echo $1 > xclip -i

