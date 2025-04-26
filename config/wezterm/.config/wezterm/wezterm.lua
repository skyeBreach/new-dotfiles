-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

--
config.color_scheme = 'Catppuccin Macchiato'
config.font = wezterm.font('JetBrains Mono', { weight = 'Bold', italic = true })

-- and finally, return the configuration to wezterm
return config
