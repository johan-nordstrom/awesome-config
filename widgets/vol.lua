-- {{{ Volume widget
-- todo: change to lain widget
volume = wibox.widget.textbox()
vicious.register(volume, vicious.widgets.volume,
'<span background="#3F3F3F" font="Tamsyn 10"><span font="Tamsyn 10" color="#EEEEEE">Vol: $1%</span></span>', 0.3, "Master")

volicon = wibox.widget.imagebox()
volicon:set_image(beautiful.volicon)
--}}}---------------------------------------------------------------------------


