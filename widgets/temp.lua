--{{{ Temperature widget 
tempicon = wibox.widget.imagebox(beautiful.tempicon)
tempwidget = lain.widgets.temp({
	-- refactor to .cache/awesome/temperature
	tempfile = "/home/johan/.temp",
	settings = function()
		widget:set_markup(markup.font(font, coretemp_now .. "°C"))
	end
})
--}}}                                    

