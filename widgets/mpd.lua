--{{{ MPD widget
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
--}}}                                     

