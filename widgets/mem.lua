--{{{ Mem widget
memwidget = lain.widgets.mem({
	settings = function()
		widget:set_markup(markup.font(font, "Mem used: " .. mem_now.used .. "MB "))
	end
})

memicon = wibox.widget.imagebox()
memicon:set_image(beautiful.memicon)
--}}}---------------------------------------------------------------------------
