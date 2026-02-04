local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.automatically_reload_config = true
config.font_size = 12.0
config.use_ime = true
config.window_background_opacity = 0.80
config.macos_window_background_blur = 10

config.color_schemes = require 'colors'
config.color_scheme = 'Kanagawa'
-- config.color_scheme = 'Kanagawa-dragon'
-- config.color_scheme = 'Kanagawa (Gogh)'
config.force_reverse_video_cursor = true
-- config.window_decorations = 'RESIZE'
config.hide_tab_bar_if_only_one_tab = true

config.use_fancy_tab_bar = false
config.colors = {
	tab_bar = {
		background = 'none',
	},
}
config.window_frame = {
	inactive_titlebar_bg = 'none',
	active_titlebar_bg = 'none',
}
config.window_background_gradient = {
	colors = { "#101010" },
}
config.show_new_tab_button_in_tab_bar = false

wezterm.on('format-tab-title',
	function(tab, tabs, panes, config, hover, max_width)
		local background = '#1f1f28'
		local foreground = '#727169'

		if tab.is_active then
			background = '#2d4f67'
			foreground = '#dcd7ba'
		end
		
		local index = tab.tab_index + 1
		local title = "   " .. "[" .. index .. "] " .. wezterm.truncate_right(tab.active_pane.title, max_width - 1) .. "   "

		return {
			{ Background = { Color = background } },
			{ Foreground = { Color = foreground } },
			{ Text = title },
		}
	end
)

config.keys = require("keybinds").keys
config.key_tables = require("keybinds").key_table
config.leader = { key = "q", mods = "CTRL", timeout_milliseconds = 2000 }

return config
