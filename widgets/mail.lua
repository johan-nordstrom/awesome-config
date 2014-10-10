--{{{ Mail widget
mailicon = wibox.widget.imagebox()
mailwidget = lain.widgets.imap({
	password = "keyring2 get gmail johan.nordstrom86@gmail.com",
	mail = "johan.nordstrom86@gmail.com",
	port = "993",
	timeout = "180",
	server = "imap.gmail.com",
	settings = function()
		mailicon:set_image(beautiful.mailicon)
		widget:set_markup(markup.font(font, mailcount))
	end
})
--}}}
