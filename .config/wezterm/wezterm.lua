local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.automatically_reload_config = true
config.font_size = 12.0
config.use_ime = true
config.window_background_opacity = 0.85
config.macos_window_background_blur = 15

config.color_schemes = require 'colors'
config.color_scheme = 'Kanagawa'
-- config.color_scheme = 'Kanagawa-dragon'
config.force_reverse_video_cursor = true
-- config.color_scheme = 'Kanagawa (Gogh)'

config.keys = require 'keybinds'

return config
