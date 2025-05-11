#!/usr/bin/env zsh

# ================================================================================================ #
# Config

backgroundcolor=24273aff
insidecolor=00000000
ringcolor=ffffffff
keyhlcolor=d23c3dff
bshlcolor=d23c3dff
separatorcolor=00000000
insidevercolor=00000000
insidewrongcolor=d23c3dff
ringvercolor=ffffffff
ringwrongcolor=ffffffff
verifcolor=ffffffff
timecolor=ffffffff
datecolor=ffffffff
loginbox=00000066
font="sans-serif"
locktext='Enter password to unlock..'

layoutcolor=ffffffff
greetercolor=ffffffff
fontlg=32
fontmd=16
fontsm=12

# ================================================================================================ #
#

i3lock \
    --ignore-empty-password \
    --screen=1 \
    --indicator --radius=20 --ring-width=4 --ind-pos='x+w-r-20:y+h-r-20' \
    --color=$backgroundcolor \
    --inside-color=$insidecolor --ring-color=$ringcolor --line-uses-inside \
    --keyhl-color=$keyhlcolor --bshl-color=$bshlcolor --separator-color=$separatorcolor \
    --insidever-color=$insidevercolor --insidewrong-color=$insidewrongcolor \
    --ringver-color=$ringvercolor --ringwrong-color=$ringwrongcolor \
    --verif-text='' --wrong-text='' --noinput-text="" \

# ================================================================================================ #
