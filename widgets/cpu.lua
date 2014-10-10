--{{{  CPU widget
cpu_widget = lain.widgets.cpu({
	timeout = 4,
	settings = function()
		widget:set_markup(markup.font(font, "CPU: " .. cpu_now.usage .. "%"))
	end
})
cpuwidget = wibox.widget.background()
cpuwidget:set_widget(cpu_widget)
cpuwidget:set_bgimage(beautiful.widget_bg)
cpuicon = wibox.widget.imagebox()
cpuicon:set_image(beautiful.cpuicon)
--}}}---------------------------------------------------------------------------
