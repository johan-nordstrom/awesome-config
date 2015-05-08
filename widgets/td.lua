--{{{ Time and date widget
tdwidget = wibox.widget.textbox()
local strf = '<span font="Tamsyn 10" color="#EEEEEE" background="#3F3F3F">%a %d %b %H:%M</span>'
vicious.register(tdwidget, vicious.widgets.date, strf, 20)

clockicon = wibox.widget.imagebox()
clockicon:set_image(beautiful.clockicon)
--}}} 
 

