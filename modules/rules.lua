 --{{{ Rules
 awful.rules.rules = { 
	 { rule = { },
	 properties = { border_width = beautiful.border_width,
	 border_color = beautiful.border_normal,
	 focus = awful.client.focus.filter,
	 keys = clientkeys,
	 raise = true,
	 focus = true,
	 buttons = clientbuttons,
	 size_hints_honor = false 
 } },
	 { rule = { class = "MPlayer" },
	 properties = { floating = true } },
	 { rule = { class = "Firefox" },
	 properties = { tag = tags[2] } },
	 { rule = { class = "Pidgin" },
	 properties = { tag = tags[3] } },
	 { rule = { class = "xchat" },
	 properties = { tag = tags[3] } },
	 { rule = { class = "spotify" },
	 properties = { tag = tags[4] } },
	 { rule = { class = "urxvt", instance = "ncmpcpp 0.6_beta4" },
	 properties = { tag = tags[4] } },
 }
 --}}}
