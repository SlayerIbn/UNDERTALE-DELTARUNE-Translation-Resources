tx = 0
if instance_exists(obj_doomtimer)
    dmx = (120 - obj_doomtimer.dx)
else
    dmx = 0
timestring = "mettnews_ticker_doom_timeleft_plur" // Plural message (add this into textdata_en)
bombstring = "mettnews_ticker_doom_bombsleft_plur" // Plural message (add this into textdata_en)
if (dmx <= 1)
    timestring = "mettnews_ticker_doom_timeleft_sing" // Singular message (add this into textdata_en)
if ((6 - global.flag[395]) <= 1)
    bombstring = "mettnews_ticker_doom_bombsleft_sing" // Singular message (add this into textdata_en)
stringer = scr_gettext(timestring, string(dmx))
if (doomx == 0)
    stringer += scr_gettext("mettnews_ticker_doom1")
if (doomx == 1)
    stringer += scr_gettext(bombstring, string((6 - global.flag[395]))) // bombstring variable
if (doomx == 2)
    stringer += scr_gettext("mettnews_ticker_doom2")
if (doomx == 3)
    stringer += scr_gettext(bombstring, string((6 - global.flag[395]))) // bombstring variable
if (doomx == 4)
    stringer += scr_gettext("mettnews_ticker_doom3")
if (doomx == 5)
    stringer += scr_gettext(bombstring, string((6 - global.flag[395]))) // bombstring variable
if (doomx == 6)
    stringer += scr_gettext("mettnews_ticker_doom4")
if (doomx == 7)
    stringer += scr_gettext(bombstring, string((6 - global.flag[395]))) // bombstring variable
if (doomx == 8)
    stringer += scr_gettext("mettnews_ticker_doom5")
if (doomx == 9)
    stringer += scr_gettext("mettnews_ticker_doom6")
if (doomx == 10)
    stringer += scr_gettext("mettnews_ticker_doom7")
doomx += 1
doomtimer = 0
