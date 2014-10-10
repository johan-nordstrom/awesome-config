local gears = require("gears")

-- Localization
os.setlocale(os.getenv("LANG"))

--{{{---| Theme |---------------------------------------------------------------------------
config_dir = ("/home/johan/.config/awesome/")
themes_dir = (config_dir .. "/themes")
beautiful.init(themes_dir .. "/zenburn/theme.lua")
if beautiful.wallpaper then
	for s = 1, screen.count() do
		gears.wallpaper.maximized(beautiful.wallpaper, s, true)
	end 
end
--}}}----------------------------------------------------------------------------------------

--{{{---| Variables |---------------------------------------------------------------------------
modkey = "Mod1"
altkey = "Mod4"
terminal = "urxvtc"
editor = os.getenv("EDITOR") or "vim"
editor_cmd = terminal .. " -e " .. editor
markup = lain.util.markup
font = "Tamsyn 12"
--}}}----------------------------------------------------------------------------------------
