local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.send_composed_key_when_left_alt_is_pressed = true
config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
config.default_cursor_style = "BlinkingBlock"
config.color_scheme = "nightfox"
config.font = wezterm.font("Mononoki Nerd Font")
config.font_size = 16

return config
