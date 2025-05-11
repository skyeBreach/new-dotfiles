# ================================================================================================== #
# ZSH Paths

# Path to the Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Path to the Oh My Zsh custom settings
ZSH_CUSTOM=$HOME/.config/zsh

# ================================================================================================== #
# Theming

ZSH_THEME="robbyrussell"

# ================================================================================================== #
# Plugins and SubModules

# First half of the work around for 'Insecure completion-dependent directories detected'
ZSH_DISABLE_COMPFIX="true"

# Array of 'Oh My ZSH' plugins to load
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Second half of the work around for Insecure completion-dependent directories detected'
zstyle :compinstall filename '/home/skye/.zshrc'

# ================================================================================================== #
#

# pnpm
export PNPM_HOME="/home/skye/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/home/skye/.bun/_bun" ] && source "/home/skye/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
. "/home/skye/.deno/env"

export WEBKIT_DISABLE_COMPOSITING_MODE=1

export EDITOR="nvim"
export VISUAL="nvim"
export TERM="wezterm"
# export BROWSER='firefox'

