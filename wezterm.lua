local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Keys
config.keys = {
	-- This will create a new split and run your default program inside it
	{
	  key = 'd',
	  mods = 'SUPER|SHIFT',
	  action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
	},
	{
		key = 'a',
		mods = 'SUPER|SHIFT',
		action = wezterm.action.PaneSelect {
		  alphabet = '1234567890',
		},
	},
	{
	  key = 'w',
	  mods = 'SUPER|SHIFT',
	  action = wezterm.action.CloseCurrentPane { confirm = true },
	},
	{
		key = 'H',
		mods = 'SUPER|SHIFT',
		action = wezterm.action.AdjustPaneSize { 'Left', 10 },
	},
	{
		key = 'L',
		mods = 'SUPER|SHIFT',
		action = wezterm.action.AdjustPaneSize { 'Right', 10 },
	},
}

-- Font

config.font_size = 18
config.font = wezterm.font 'JetBrains Mono'


-- Looks

config.default_cursor_style = 'BlinkingBar'
config.color_scheme = 'ChallengerDeep'
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 24


--Background

config.background = {
	{
		source = {Color="#222436"},
		width = '100%',
		height = '100%',
	},
	{ 
	  source = {
		File = '/Users/macono/.config/wezterm/image.png',
	  },
	  opacity = 0.35,
	  repeat_x = 'NoRepeat',
	  repeat_y = 'NoRepeat',
	  width = '30%',
	  vertical_align = 'Bottom',
	  horizontal_align = "Right",
	  height = '15%',
	}, 
  }


return config
