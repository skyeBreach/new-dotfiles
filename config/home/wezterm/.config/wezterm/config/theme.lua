local wezterm = require('wezterm')

return {
    color_scheme = 'Catppuccin Macchiato',
    font = wezterm.font_with_fallback({
        { family = 'JetBrains Mono', weight = 'Bold'},
        { family = 'SauceCodePro Nerd Font Mono', weight = 'Bold'},
    }),
    font_size = 10,
    term = 'wezterm',
}
