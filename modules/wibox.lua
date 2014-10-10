-- Top and bottom wibox with menu, taglist and widgets

-- Create top panel
mywibox = awful.wibox({ position = "top"})
--, height = "24" })

-- Create runbox
mypromptbox = awful.widget.prompt()

-- Create taglist
mytaglist = {}

mytaglist.buttons = awful.util.table.join(
awful.button({ }, 1, awful.tag.viewonly),
awful.button({ modkey }, 1, awful.client.movetotag),
awful.button({ }, 3, awful.tag.viewtoggle),
awful.button({ modkey }, 3, awful.client.toggletag),
awful.button({ }, 4, function(t) awful.tag.viewnext(awful.tag.getscreen(t)) end),
awful.button({ }, 5, function(t) awful.tag.viewprev(awful.tag.getscreen(t)) end))

mytaglist = awful.widget.taglist(1, awful.widget.taglist.filter.all, mytaglist.buttons)

--{{{ Top wibox
-- TODO: refactor, add widget to array in widget script and then add array to wibox layout
-- top_widgets = {}
-- bottom_widgets = {}
separator = wibox.widget.textbox()
separator:set_text(" | ")

spacer = wibox.widget.textbox()
spacer:set_text(" ")

-- Top left layout
local left_layout = wibox.layout.fixed.horizontal()

-- Menu
require("modules.menu")
left_layout:add(mymenulauncher)
left_layout:add(mytaglist)
left_layout:add(mypromptbox)

require("widgets.mpd")
left_layout:add(mpdicon)
left_layout:add(spacer)
left_layout:add(mpdwidget)

-- Top right
local right_layout = wibox.layout.fixed.horizontal()
require("widgets.mail")
right_layout:add(mailicon)
right_layout:add(spacer)
right_layout:add(mailwidget)
right_layout:add(spacer)

require("widgets.temp")
right_layout:add(tempicon)
right_layout:add(spacer)
right_layout:add(tempwidget)
right_layout:add(spacer)

require("widgets.mem")
right_layout:add(memicon)
right_layout:add(spacer)
right_layout:add(memwidget)
--right_layout:add(spacer)

require("widgets.cpu")
right_layout:add(cpuicon)
right_layout:add(spacer)
right_layout:add(cpuwidget)
right_layout:add(spacer)

require("widgets.vol")
right_layout:add(volicon)
right_layout:add(spacer)
right_layout:add(volume)
right_layout:add(spacer)

require("widgets.disk")
right_layout:add(diskicon)
right_layout:add(spacer)
right_layout:add(diskwidget)
right_layout:add(spacer)

require("widgets.td")
right_layout:add(clockicon)
right_layout:add(spacer)
right_layout:add(tdwidget)
right_layout:add(spacer)

local layout = wibox.layout.align.horizontal()
layout:set_left(left_layout)
layout:set_right(right_layout)

--awful.screen.padding(screen[1], {top = 0})
mywibox:set_widget(layout)
--}}} End top wibox


--{{{ Bottom wibox
mytasklist = {}
mytasklist.buttons = awful.util.table.join(
awful.button({ }, 1, function (c)
	if c == client.focus then
		c.minimized = true
	else  
		--Without this, the following
		--:isvisible() makes no sense
		c.minimized = false
		if not c:isvisible() then
			awful.tag.viewonly(c:tags()[1])
		end   
		--This will also un-minimize
		--the client, if needed
		client.focus = c
		c:raise()
	end   
end),
awful.button({ }, 3, function ()
	if instance then
		instance:hide()
		instance = nil
	else
		instance = awful.menu.clients({
			theme = { width = 250 }
		})
	end
end),
awful.button({ }, 4, function ()
	awful.client.focus.byidx(1)
	if client.focus then client.focus:raise() end
end),
awful.button({ }, 5, function ()
	awful.client.focus.byidx(-1)
	if client.focus then client.focus:raise() end
end))
mytasklist  = awful.widget.tasklist(1, awful.widget.tasklist.filter.currenttags, mytasklist.buttons)

mybottomwibox = awful.wibox({ position = "bottom" })
--, height = "24", border_width="0" })


-- Widgets that are aligned to the bottom left
bottom_left_layout = wibox.layout.fixed.horizontal()
--bottom_left_layout:add(mytasklist)
bottom_right_layout = wibox.layout.fixed.horizontal()
bottom_right_layout:add(wibox.widget.systray())          

-- Now bring it all together (with the tasklist in the middle)
bottom_layout = wibox.layout.align.horizontal()
bottom_layout:set_left(bottom_left_layout)
bottom_layout:set_middle(mytasklist)
bottom_layout:set_right(bottom_right_layout)

mybottomwibox:set_widget(bottom_layout)
--lain.widgets.borderbox(mybottomwibox, 1, { color = "#3F3F3F", size = "2" } )
