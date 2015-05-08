--{{{  Bat widget
bat_widget = lain.widgets.bat({
	timeout = 5,
	settings = function()
		widget:set_markup(markup.font(font, "Battery Left: " .. bat_now.time .. ""))
	end
})
batwidget = wibox.widget.background()
batwidget:set_widget(bat_widget)
batwidget:set_bgimage(beautiful.widget_bg)
baticon = wibox.widget.imagebox()
baticon:set_image(beautiful.baticon)
--}}}---------------------------------------------------------------------------
