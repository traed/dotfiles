local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.automatically_reload_config = true
config.send_composed_key_when_left_alt_is_pressed = true
config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
config.default_cursor_style = "BlinkingBlock"
config.color_scheme = "nightfox"
config.font = wezterm.font("Mononoki Nerd Font")
config.font_size = 16
config.initial_rows = 50
config.initial_cols = 160
config.keys = {
  -- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
  {key="LeftArrow", mods="OPT", action=wezterm.action{SendString="\x1bb"}},
  -- Make Option-Right equivalent to Alt-f; forward-word
  {key="RightArrow", mods="OPT", action=wezterm.action{SendString="\x1bf"}},
}

return config
