--{{{---| Table of layouts |---------------------------------------------------------------------------
layouts =
{
	awful.layout.suit.floating,
	awful.layout.suit.tile,
	lain.layout.termfair,
	awful.layout.suit.tile.left,
	awful.layout.suit.tile.bottom,
	awful.layout.suit.tile.top
}
--}}}---------------------------------------------------------------------------------
 
-- First screen
tags = {}
tags = awful.tag({ " term ", " web ", " im ", " music ", "5", "6", "7", "8", "9"}, 1, 
layouts[3], layouts[2], layouts[2], layouts[2], layouts[2], layouts[2], layouts[2], layouts[2], layouts[2])
