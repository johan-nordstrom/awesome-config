--{{{ Disk widget
diskwidget = wibox.widget.textbox()
vicious.register(diskwidget, vicious.widgets.fs,'<span font="Tamsyn 12" color="#EEEEEE">SSD Free: ${/ avail_gb}GB</span>', 300)

diskicon = wibox.widget.imagebox()
diskicon:set_image(beautiful.diskicon)
--}}}

