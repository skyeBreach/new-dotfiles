-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

--
config.color_scheme = 'Catppuccin Macchiato'
config.font = wezterm.font_with_fallback({
    { family= 'JetBrains Mono', weight = 'Bold'},
    { family= 'SauceCodePro Nerd Font Mono', weight = 'Bold'},
})

config.term = 'wezterm'

-- and finally, return the configuration to wezterm
return config
