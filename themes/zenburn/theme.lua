------------------------------------
--  "Zenburn" awesome theme          --
--    By Adrian C. (anrxc)   	     --
--    Customized by Johan Nordström  --
------------------------------------

-- Alternative icon sets and widget icons:
--  * http://awesome.naquadah.org/wiki/Nice_Icons

-- {{{ Main
theme = {}
theme_dir = ("/home/johan/.config/awesome/themes/zenburn")
theme.wallpaper =  (theme_dir .. "/zenburn-background.png")
-- }}}

-- {{{ Styles
theme.font      = "Tamsyn 12"
theme.xfont      = "-misc-tamsyn-medium-r-normal--12-87-100-100-c-60-iso8859-1"
-- }}}

-- {{{ Colors
theme.fg_normal  = "#DCDCCC"
theme.fg_focus   = "#F0DFAF"
theme.fg_urgent  = "#CC9393"
theme.bg_normal  = "#3F3F3F"
theme.bg_focus   = "#1E2320"
theme.bg_urgent  = "#3F3F3F"
--theme.bg_systray = theme.bg_normal
--theme.widget_bg                     = (theme_dir .. "/icons//bg_focus_noline.png")
-- }}}

-- {{{ Borders
theme.border_width  = 2
theme.border_normal = "#3F3F3F"
theme.border_focus  = "#6F6F6F"
theme.border_marked = "#CC9393"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#3F3F3F"
theme.titlebar_bg_normal = "#3F3F3F"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- }}}

-- {{{ Menu
theme.menu_height = 15
theme.menu_width  = 150
-- }}}

-- {{{ Taglist
--theme.taglist_fg_focus              = "#F0DFAF"
--theme.taglist_bg_focus              = (theme_dir .. "/taglist_bg_focus.png")

theme.taglist_squares_sel   = (theme_dir .. "/taglist/squarefz.png")
theme.taglist_squares_unsel = (theme_dir .. "/taglist/squarez.png")
-- }}}

-- {{{ Misc
theme.awesome_icon           = "/usr/share/awesome/themes/zenburn/awesome-icon.png"
theme.menu_submenu_icon      = "/usr/share/awesome/themes/default/submenu.png"
-- }}}

-- {{{ Icons
theme.clockicon = (theme_dir .. "/icons/time.png")
theme.diskicon = (theme_dir .. "/icons/disk.png")
theme.mailicon = (theme_dir .. "/icons/mail.png")
theme.cpuicon = (theme_dir .. "/icons/cpu.png")
theme.memicon = (theme_dir .. "/icons/mem.png")
theme.mpdicon = (theme_dir .. "/icons/music.png")
theme.tempicon = (theme_dir .. "/icons/temp.png")

theme.mute = (theme_dir .. "/icons/volmute.png")
theme.volicon = (theme_dir .. "/icons/vol.png")
theme.volhi = (theme_dir .. "/icons/volhi.png")
theme.volmed = (theme_dir .."/icons/volmed.png")
theme.vollow = (theme_dir .. "/icons/vollow.png")
-- }}}


-- {{{ Titlebar
theme.titlebar_close_button_focus  = (theme_dir .. "/titlebar/close_focus.png")
theme.titlebar_close_button_normal = (theme_dir .. "/titlebar/close_normal.png")

theme.titlebar_ontop_button_focus_active  = (theme_dir  .. "/titlebar/ontop_focus_active.png")
theme.titlebar_ontop_button_normal_active = (theme_dir .. "/titlebar/ontop_normal_active.png")
theme.titlebar_ontop_button_focus_inactive  = (theme_dir .. "/titlebar/ontop_focus_inactive.png")
theme.titlebar_ontop_button_normal_inactive = (theme_dir .. "/titlebar/ontop_normal_inactive.png")

theme.titlebar_sticky_button_focus_active  = (theme_dir .. "/titlebar/sticky_focus_active.png")
theme.titlebar_sticky_button_normal_active = (theme_dir .. "/titlebar/sticky_normal_active.png")
theme.titlebar_sticky_button_focus_inactive  = (theme_dir .. "/titlebar/sticky_focus_inactive.png")
theme.titlebar_sticky_button_normal_inactive = (theme_dir .. "/titlebar/sticky_normal_inactive.png")

theme.titlebar_floating_button_focus_active  = (theme_dir .. "/titlebar/floating_focus_active.png")
theme.titlebar_floating_button_normal_active = (theme_dir .. "/titlebar/floating_normal_active.png")
theme.titlebar_floating_button_focus_inactive  = (theme_dir .. "/titlebar/floating_focus_inactive.png")
theme.titlebar_floating_button_normal_inactive = (theme_dir .. "/titlebar/floating_normal_inactive.png")

theme.titlebar_maximized_button_focus_active  = (theme_dir .. "/titlebar/maximized_focus_active.png")
theme.titlebar_maximized_button_normal_active = (theme_dir .. "/titlebar/maximized_normal_active.png")
theme.titlebar_maximized_button_focus_inactive  = (theme_dir .. "/titlebar/maximized_focus_inactive.png")
theme.titlebar_maximized_button_normal_inactive = (theme_dir .. "/titlebar/maximized_normal_inactive.png")
-- }}}
--[[ Layout
theme.layout_tile       = (theme_dir ../layouts/tile.png)
theme.layout_tileleft   = (theme_dir ../layouts/tileleft.png)
theme.layout_tilebottom = (theme_dir ../layouts/tilebottom.png)
theme.layout_tiletop    = (theme_dir ../layouts/tiletop.png)
theme.layout_fairv      = (theme_dir ../layouts/fairv.png)
theme.layout_fairh      = (theme_dir ../layouts/fairh.png)
theme.layout_spiral     = (theme_dir ../layouts/spiral.png)
theme.layout_dwindle    = (theme_dir ../layouts/dwindle.png)
theme.layout_max        = (theme_dir ../layouts/max.png)
theme.layout_fullscreen = (theme_dir ../layouts/fullscreen.png)
theme.layout_magnifier  = (theme_dir ../layouts/magnifier.png)
theme.layout_floating   = (theme_dir ../layouts/floating.png)
--]]

return theme
