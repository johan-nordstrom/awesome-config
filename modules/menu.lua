--{{{ Freedesktop Menu
mymainmenu = awful.menu.new({ items = require("menugen").build_menu(),
theme = { height = 16, width = 130 }}) 

mymenulauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
menu = mymainmenu })
----}}}---------------------------------------------------------------------------

