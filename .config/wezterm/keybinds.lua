local wezterm = require 'wezterm'

return {
	{key = 'LeftArrow', mods = 'CMD', action = wezterm.action.SendString '\x1bb'},
	{key = 'RightArrow', mods = 'CMD', action = wezterm.action.SendString '\x1bf'},
}

