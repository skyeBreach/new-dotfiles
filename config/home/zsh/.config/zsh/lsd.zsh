#!/usr/bin/env zsh
# ================================================================================================== #
# Init and Config

d="$HOME/.dir_colors"
test -r $d && eval "$(dircolors $d)"

# ================================================================================================== #
# Alias
# TODO: These need completing

alias lsd="lsd -F --group-directories-first --sort git"

alias ls="lsd"
alias ld="lsd -d"
alias la="lsd -a"
alias ll="lsd -l"
alias lla="lsd -la"
alias lt="lsd --tree --depth 2"

# ================================================================================================== #

