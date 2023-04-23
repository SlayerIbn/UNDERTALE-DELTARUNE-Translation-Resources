var yy, xx, xx2, i, name, limit, suffix, this_x;
draw_set_color(c_white)
scr_setfont(fnt_maintext)
if (number == -1)
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, rot, c_white, 1)
if (number == 0)
{
    draw_set_font(fnt_maintext)
    scr_drawtext_centered_scaled(160, 90, scr_gettext("credits_short_160"), 2, 2)
    scr_setfont(fnt_maintext)
}
if (number == 1)
{
    draw_set_color(c_yellow)
    draw_text(86, 30, scr_gettext("credits_short_165"))
    draw_set_color(c_white)
    yy = 130
    if (global.language == "ja")
        yy = 140
    draw_set_font(fnt_maintext)
    draw_text_transformed(40, yy, scr_gettext("credits_short_167"), 2, 2, 0)
    scr_setfont(fnt_maintext)
}
if (number == 2)
{
    xx = 60
    if (global.language == "ja")
        xx = 32
    draw_set_color(c_yellow)
    draw_text(xx, 22, scr_gettext("credits_short_173"))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 58, scr_gettext("credits_short_175"))
    draw_set_color(c_yellow)
    draw_text(xx, 88, scr_gettext("credits_short_178"))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 106, scr_gettext("credits_short_180"))
    draw_set_color(c_yellow)
    draw_text(xx, 136, scr_gettext("credits_short_183"))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 154, scr_gettext("credits_short_185"))
    draw_set_color(c_yellow)
    draw_text(xx, 184, scr_gettext("credits_short_186"))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 202, scr_gettext("credits_short_187"))
}
if (number == 3)
{
    xx = 60
    if (global.language == "ja")
        xx = 32
    draw_set_color(c_yellow)
    draw_text(xx, 24, scr_gettext("credits_short_193"))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 44, scr_gettext("credits_short_195"))
    draw_set_color(c_yellow)
    draw_text(xx, 104, scr_gettext("credits_short_199"))
    draw_set_color(c_white)
    scr_credits_short_draw_name((-((xx + 30))), 124, scr_gettext("credits_short_201"))
    draw_set_color(c_yellow)
    draw_text(xx, 164, scr_gettext("credits_short_205"))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 184, scr_gettext("credits_short_207"))
}
if (number == 4)
{
    xx = 60
    if (global.language == "ja")
        xx = 32
    draw_set_color(c_yellow)
    draw_text(xx, 20, scr_gettext("credits_short_219"))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 55, scr_gettext("credits_short_221"))
    draw_set_color(c_yellow)
    draw_text(xx, 95, scr_gettext("credits_short_224"))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 115, scr_gettext("credits_short_226"))
    draw_set_color(c_yellow)
    draw_text(xx, 165, scr_gettext("credits_short_229"))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 185, scr_gettext("credits_short_231"))
}
if (number == 5)
{
    xx = 60
    if (global.language == "ja")
        xx = 32
    yy = 24
    if (global.language == "ja")
        yy = 14
    draw_set_color(c_yellow)
    draw_text(xx, yy, scr_gettext("credits_short_240"))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), (yy + 20), scr_gettext("credits_short_242"))
    yy = 135
    if (global.language == "ja")
        yy = 147
    draw_set_color(c_yellow)
    draw_text(xx, yy, scr_gettext("credits_short_246"))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), (yy + 20), scr_gettext("credits_short_248"))
    yy = 185
    if (global.language == "ja")
        yy = 191
    draw_set_color(c_yellow)
    draw_text(xx, yy, scr_gettext("credits_short_251"))
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), (yy + 20), scr_gettext("credits_short_253"))
}
if (number == 6)
{
    xx = 60
    if (global.language == "ja")
        xx = 32
    yy = 30
    if (global.osflavor == 4 && global.language != "ja")
        yy = 22
    draw_set_color(c_yellow)
    if (global.osflavor == 4)
    {
        draw_text(xx, yy, scr_gettext("credits_short_loc1_1_console"))
        if (global.language == "ja")
            yy += 18
        else
            yy += 36
    }
    else
    {
        draw_text(xx, yy, scr_gettext("credits_short_loc1_1"))
        yy += 18
    }
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc1_1a"))
    yy += 28
    draw_set_color(c_yellow)
    draw_text(xx, yy, scr_gettext("credits_short_loc1_2"))
    yy += 18
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc1_2a"))
    yy += 28
    draw_set_color(c_yellow)
    draw_text(xx, yy, scr_gettext("credits_short_loc1_3"))
    yy += 18
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc1_3a"))
    yy += 28
    draw_set_color(c_yellow)
    draw_text(xx, yy, scr_gettext("credits_short_loc1_4"))
    yy += 18
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc1_4a"))
    yy += 28
}
if (number == 7)
{
    xx = 60
    if (global.language == "ja")
        xx = 32
    xx2 = 200
    if (global.language == "ja")
        xx2 = 190
    yy = 42
    if (global.osflavor == 4)
        yy = 24
    draw_set_color(c_yellow)
    draw_text(xx, yy, scr_gettext("credits_short_loc2_1"))
    yy += 18
    draw_set_color(c_white)
    if (global.osflavor == 4)
    {
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_1a"))
        scr_credits_short_draw_name(xx2, yy, scr_gettext("credits_short_loc2_1b"))
        yy += 18
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_1c"))
        scr_credits_short_draw_name(xx2, yy, scr_gettext("credits_short_loc2_1d"))
        yy += 18
    }
    else
    {
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_1a"))
        yy += 18
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_1b"))
        yy += 18
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_1c"))
        yy += 18
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_1d"))
        yy += 18
    }
    yy += 10
    draw_set_color(c_yellow)
    draw_text(xx, yy, scr_gettext("credits_short_loc2_2"))
    yy += 18
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_2a"))
    yy += 28
    if (global.osflavor == 4)
    {
        draw_set_color(c_yellow)
        draw_text(xx, yy, scr_gettext("credits_short_loc2_3"))
        yy += 18
        draw_set_color(c_white)
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_3a"))
        yy += 28
        draw_set_color(c_yellow)
        draw_text(xx, yy, scr_gettext("credits_short_loc2_4"))
        yy += 18
        draw_set_color(c_white)
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext("credits_short_loc2_4a"))
        yy += 28
    }
}
if (number == 7.5)
{
    xx = 60
    if (global.language == "ja")
        xx = 32
    yy = 24
    draw_set_color(c_yellow)
    draw_text(xx, yy, scr_gettext("credits_short_test_0"))
    yy += 18
    draw_set_color(c_white)
    draw_set_font(fnt_maintext)
    for (i = 0; i < 11; i++)
    {
        name = scr_gettext(("credits_short_test_" + string((i + 1))))
        draw_text((xx + 30), yy, name)
        yy += 16
    }
    scr_setfont(fnt_ja_maintext)
}
if (number == 8)
{
    xx = 60
    if (global.language == "ja")
        xx = 32
    xx2 = (xx + 100)
    yy = 44
    if (global.osflavor == 4)
        yy = 22
    draw_set_color(c_yellow)
    scr_credits_short_draw_name(xx, yy, scr_gettext("credits_short_thanks_0"))
    yy += 18
    draw_set_color(c_white)
    if (global.osflavor == 4)
    {
        limit = 14
        suffix = "_console"
    }
    else
    {
        limit = 12
        suffix = ""
    }
    for (i = 1; i <= limit; i++)
    {
        this_x = xx
        if ((i % 2) == 0)
            this_x = xx2
        scr_credits_short_draw_name((this_x + 30), yy, scr_gettext((("credits_short_thanks_" + string(i)) + suffix)))
        if ((i % 2) == 0)
            yy += 16
    }
    for (i = 1; i <= 2; i++)
    {
        scr_credits_short_draw_name((xx + 30), yy, scr_gettext(("credits_short_thanks_last_" + string(i))))
        yy += 16
    }
}
if (number == 9) // Neutral fantraslation credits
{
    xx = 60
    draw_set_color(c_yellow)
    draw_text(xx, 11, "PLACEHOLDER")
    draw_set_color(c_yellow)
    draw_text(xx, 39, "PLACEHOLDER")
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 57, "PLACEHOLDER")
    draw_set_color(c_yellow)
    draw_text(xx, 85, "PLACEHOLDER")
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 103, "PLACEHOLDER")
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 121, "PLACEHOLDER")
    draw_set_color(c_yellow)
    draw_text(xx, 149, "PLACEHOLDER")
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 167, "PLACEHOLDER")
    draw_set_color(c_yellow)
    draw_text(xx, 195, "PLACEHOLDER")
    draw_set_color(c_white)
    scr_credits_short_draw_name((xx + 30), 213, "PLACEHOLDER")
}
if (won >= 1)
{
    if control_check(0)
    {
        if (alarm[5] > 20)
            alarm[5] = 20
    }
}
