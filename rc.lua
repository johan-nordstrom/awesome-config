local naughty = require("naughty")

-- Dependencies for all modules
lain = require("lain")
awful = require("awful")
wibox = require("wibox")
beautiful = require("beautiful")
vicious = require("vicious")
eminent = require("eminent")
--local awful = require("awful")
awful.rules = require("awful.rules")
awful.autofocus = require("awful.autofocus")
--local wibox = require("wibox")
--local gears = require("gears")
--local blingbling = require("blingbling")
--local beautiful = require("beautiful")
--local menubar = require("menubar")

--{{{ Error handling
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
if awesome.startup_errors then
	naughty.notify({ preset = naughty.config.presets.critical,
	title = "Oops, there were errors during startup!",
	text = awesome.startup_errors })
end

-- Handle runtime errors after startup
do
	local in_error = false
	awesome.connect_signal("debug::error", function (err)
		-- Make sure we don't go into an endless error loop
		if in_error then return end 
		in_error = true

		naughty.notify({ preset = naughty.config.presets.critical,
		title = "Oops, an error happened!",
		text = err })
		in_error = false
	end)
end
--}}}

-- Configuration and theme setup 
require("config")

-- Tags
require("modules.tags")

-- Wibox
require ("modules.wibox")

-- Bindings (key/mouse)
require ("modules.bindings")

-- rules
require ("modules.rules")

-- Signals
require("modules.signals")
