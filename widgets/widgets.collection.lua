local awful = require("awful")
local wibox = require("wibox")
local vicious = require("vicious")
local beautiful = require("beautiful")
local lain = require("lain")

--{{{---| Variables |---------------------------------------------------------------------------
markup      = lain.util.markup
--}}}---------------------------------------------------------------------------

--{{{---| Filesystemwidget |--------------------------------------------------------------------
fswidget = wibox.widget.textbox()
vicious.register(fswidget, vicious.widgets.fs,'<span font="Neep 12" color="#EEEEEE">SSD Free: ${/ avail_gb} GB</span>', 300)

diskicon = wibox.widget.imagebox()
diskicon:set_image(beautiful.diskicon)
--}}}---------------------------------------------------------------------------

-- {{{ -| Volume widget |                                     -
volume = wibox.widget.textbox()
vicious.register(volume, vicious.widgets.volume,
'<span background="#3F3F3F" font="Neep 12"><span font="Neep 12" color="#EEEEEE">Vol: $1%</span></span>', 0.3, "Master")

volicon = wibox.widget.imagebox()
volicon:set_image(beautiful.volicon)
--}}}---------------------------------------------------------------------------

--{{{  -| CPU widget |                                     -
cpuwidget = lain.widgets.cpu({
	timeout = 4,
	settings = function()
		widget:set_markup("CPU: " .. cpu_now.usage)
	end
})
cpuwidget = wibox.widget.background()
cpuwidget:set_widget(cpu_widget)
cpuwidget:set_bgimage(beautiful.widget_bg)
cpu_icon = wibox.widget.imagebox()
cpu_icon:set_image(beautiful.cpu)
--}}}---------------------------------------------------------------------------

--{{ -| MEM widget |                                     -
memwidget = lain.widgets.mem({
	settings = function()
		widget:set_text(" " .. mem_now.used .. "MB ")
	end
})

memicon = wibox.widget.imagebox()
memicon:set_image(beautiful.memicon)
--}}}---------------------------------------------------------------------------

--{{{ -| Clock widget |----------------------------------------------                                     
mytextclock = awful.widget.textclock(markup("#EEEEEE", " " .. "%H:%M" .. " "))
clock_icon = wibox.widget.imagebox()
clock_icon:set_image(beautiful.clockicon)
clockwidget = wibox.widget.background()
clockwidget:set_widget(mytextclock)
clockwidget:set_bgimage(beautiful.widget_bg)
--}}}---------------------------------------------------------------------------
 
--{{{ -| Calendar widget |----------------------------------------------                                     
mytextcalendar = awful.widget.textclock(markup("#EEEEEE", " " .. "%d %b<span font='Zeev-Peep 12'> </span>"))
calendar_icon = wibox.widget.imagebox()
calendar_icon:set_image(beautiful.calendar)
calendarwidget = wibox.widget.background()
calendarwidget:set_widget(mytextcalendar)
calendarwidget:set_bgimage(beautiful.widget_bg)
lain.widgets.calendar:attach(calendarwidget, { fg = "#EEEEEE", position = "top_right" })
--}}}---------------------------------------------------------------------------
 
--tdwidget = wibox.widget.textbox()
--local strf = '<span font="Neep 12" color="#EEEEEE" background="#3F3F3F">%a %d %b %H:%M</span>'
--vicious.register(tdwidget, vicious.widgets.date, strf, 20)
--
--clockicon = wibox.widget.imagebox()
--clockicon:set_image(beautiful.clockicon)

--{{---| Temperature widget |---------------------------------------------------------------------------
tempicon = wibox.widget.imagebox(beautiful.tempicon)
tempwidget = lain.widgets.temp({
	tempfile = "/home/johan/.temp",
	settings = function()
		widget:set_markup(markup("#EEEEEE", coretemp_now .. "°C"))
	end
})
--}}---------------------------------------------------------------------------

--{{---| Mail widget |---------------------------------------------------------------------------
mailicon = wibox.widget.imagebox()
mailwidget = lain.widgets.imap({
	    password = "keyring2 get gmail johan.nordstrom86@gmail.com",
	    mail = "johan.nordstrom86@gmail.com",
	    port = "993",
	    timeout = "120",
	    server = "imap.gmail.com",
	    settings = function()
		    if mailcount > 0 then
			    mailicon:set_image(beautiful.mailicon)
			    widget:set_markup(markup("#ffffff", mailcount))
		    else
			    widget:set_text("")
			    mailicon:set_image(nil)
		    end
	    end
	    })
--}}---------------------------------------------------------------------------

--{{---| MPD widget |---------------------------------------------------------------------------
mpdicon = wibox.widget.imagebox()
mpdwidget = lain.widgets.mpd({
	musicdir = "~/music",
	settings = function()
		mpd_notification_preset = {
			text = string.format("%s [%s] - %s\n%s", mpd_now.artist,
			mpd_now.album, mpd_now.date, mpd_now.title)
		}

		if mpd_now.state == "play" then
			artist = mpd_now.artist .. " - "
			title  = mpd_now.title .. " "
			mpdicon:set_image(beautiful.mpdicon)
		elseif mpd_now.state == "pause" then
			artist = "mpd "
			title  = "paused "
		else
			artist = ""
			title  = ""
			mpdicon:set_image(nil)
		end

		widget:set_markup(markup("#EEEEEE", artist) .. markup("#EEEEEE", title))
	end
})
--}}---------------------------------------------------------------------------

--{{{---| Spacer widget |---------------------------------------------------------------------------
spacer     = wibox.widget.textbox(" ")
--}}}---------------------------------------------------------------------------
