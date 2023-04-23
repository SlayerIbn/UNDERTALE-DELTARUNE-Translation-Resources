var namex, namey, namewidth;
draw_set_color(c_white)
namex = 30
namey = 394 // Y name position
namewidth = scr_draw_name_curs(namex, namey)
draw_set_font(fnt_customhp) // Custom font
draw_text((namex + namewidth), 394, ("   LV " + string(global.lv))) // Y LV position
if (global.flag[271] == 0)
{
    draw_set_color(c_red)
    ossafe_fill_rectangle(275, 400, (275 + (global.maxhp * 1.2)), 420)
    draw_set_color(c_yellow)
    ossafe_fill_rectangle(275, 400, (275 + (global.hp * 1.2)), 420)
    draw_set_color(c_white)
    draw_set_font(fnt_customhp) // Custom font
    hpwrite = string(global.hp)
    if (global.hp < 10)
        hpwrite = ("0" + string(global.hp))
    if (global.hp < 0)
        hpwrite = "0"
    if (global.flag[509] == 1)
        hpwrite = "00.001"
    if (global.flag[509] == 2)
        hpwrite = "00.0001"
    if (global.flag[509] == 3)
        hpwrite = "00.000001"
    if (global.flag[509] == 4)
        hpwrite = "00.0000000001"
    draw_text((290 + (global.maxhp * 1.2)), 394, ((hpwrite + " / ") + string(global.maxhp))) // Y HP numbers position
}
else
{
    draw_set_color(merge_color(c_red, c_maroon, 0.5))
    ossafe_fill_rectangle(255, 400, (255 + (global.maxhp * 1.2)), 420)
    draw_set_color(c_yellow)
    ossafe_fill_rectangle(255, 400, (255 + (global.hp * 1.2)), 420)
    draw_set_color(c_fuchsia)
    if (global.km > 40)
        global.km = 40
    if (global.km >= global.hp)
        global.km = (global.hp - 1)
    ossafe_fill_rectangle((255 + (global.hp * 1.2)), 400, ((255 + (global.hp * 1.2)) - (global.km * 1.2)), 420)
    draw_sprite(spr_krmeter, 0, (265 + (global.maxhp * 1.2)), 405)
    draw_set_color(c_white)
    draw_set_font(fnt_customhp) // Custom font
    hpwrite = string(global.hp)
    if (global.km > 0)
        draw_set_color(c_fuchsia)
    if (global.hp < 10)
        hpwrite = ("0" + string(global.hp))
    if (global.hp < 0)
        hpwrite = "0"
    draw_text((305 + (global.maxhp * 1.2)), 394, ((hpwrite + " / ") + string(global.maxhp))) // Y HP numbers position
    draw_set_color(c_white)
    if instance_exists(obj_hpname)
    {
        with (obj_hpname)
            instance_destroy()
    }
    draw_sprite(spr_hpname, 0, 220, 400)
}
