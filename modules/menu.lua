--{{{ Freedesktop Menu
mymainmenu = awful.menu.new({ items = {},
theme = { height = 16, width = 130 }}) 

mymenulauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
menu = mymainmenu })
----}}}---------------------------------------------------------------------------

