var xend, numpos, name0_x, name0_y, name0_scale, xx0, stat_x, exp_x, kills_x, name_y, lv_y, hp_y, at_y, df_y, weapon_y, armor_y, gold_y, kills_y, armorname, x2, y2, scale, roomname, lvtext, timetext, namesize, lvsize, timesize, x_center, lvpos, namepos, timepos, savepos, returnpos, heart_y;
buffer += 1
if (global.interact == 5)
{
    currentmenu = global.menuno
    if (global.menuno < 6)
        currentspot = global.menucoord[global.menuno]
    xx = view_xview[view_current]
    yy = (view_yview[view_current] + 10)
    moveyy = yy
    if (obj_mainchara.y > (yy + 120))
        moveyy += 135
    if (global.menuno != 4)
    {
        draw_set_color(c_white)
        ossafe_fill_rectangle((16 + xx), (16 + moveyy), (94 + xx), (70 + moveyy)) // Menu box
        ossafe_fill_rectangle((16 + xx), (74 + yy), (94 + xx), (147 + yy)) // Menu box
        if (global.menuno == 1 || global.menuno == 5 || global.menuno == 6)
            ossafe_fill_rectangle((102 + xx), (16 + yy), (274 + xx), (196 + yy)) // Menu box
        if (global.menuno == 2)
        {
            xend = 290 // Menu box
            if (global.language == "ja")
                xend += 9
            ossafe_fill_rectangle((102 + xx), (16 + yy), (xend + xx), (224 + yy))
        }
        if (global.menuno == 3)
            ossafe_fill_rectangle((102 + xx), (16 + yy), (274 + xx), (150 + yy)) // Menu box
        if (global.menuno == 7)
            ossafe_fill_rectangle((102 + xx), (16 + yy), (274 + xx), (216 + yy)) // Menu box
        draw_set_color(c_black)
        ossafe_fill_rectangle((19 + xx), (19 + moveyy), (91 + xx), (67 + moveyy)) // Menu box
        ossafe_fill_rectangle((19 + xx), (77 + yy), (91 + xx), (144 + yy)) // Menu box
        if (global.menuno == 1 || global.menuno == 5 || global.menuno == 6)
            ossafe_fill_rectangle((105 + xx), (19 + yy), (271 + xx), (193 + yy)) // Menu box
        if (global.menuno == 2)
        {
            xend = 287 // Menu box
            if (global.language == "ja")
                xend += 9
            ossafe_fill_rectangle((105 + xx), (19 + yy), (xend + xx), (221 + yy)) // Menu box
        }
        if (global.menuno == 3)
            ossafe_fill_rectangle((105 + xx), (19 + yy), (271 + xx), (147 + yy)) // Menu box
        if (global.menuno == 7)
            ossafe_fill_rectangle((105 + xx), (19 + yy), (271 + xx), (213 + yy)) // Menu box
        draw_set_color(c_white)
        scr_setfont(fnt_small) // Different font position
        numpos = ((23 + xx) + string_width("LV  "))
        draw_text((23 + xx), (37 + moveyy), "LV")
        draw_text(numpos, (37 + moveyy), string(global.lv))
        draw_text((23 + xx), (46 + moveyy), "HP")
        draw_text(numpos, (46 + moveyy), ((string(global.hp) + "/") + string(global.maxhp)))
        draw_text((23 + xx), (55 + moveyy), "G")
        draw_text(numpos, (55 + moveyy), string(global.gold))
        scr_setfont(fnt_maintext)
        name0_x = (23 + xx)
        name0_y = (20 + moveyy)
        name0_scale = 1
        if (global.language == "ja")
        {
            draw_set_font(fnt_ja_curs)
            name0_y += 4
            name0_scale = 0.5
        }
        draw_text_transformed(name0_x, name0_y, global.charname, name0_scale, name0_scale, 0)
        scr_setfont(fnt_maintext)
        xx0 = xx
        if (global.language == "ja")
            xx0 -= 2
        if (global.item[0] == 0)
            draw_set_color(c_gray)
        if (global.menuchoice[0] == 1)
            draw_text((42 + xx0), (84 + yy), scr_gettext("field_menu_item"))
        draw_set_color(c_white)
        if (global.menuchoice[1] == 1)
            draw_text((42 + xx), (102 + yy), scr_gettext("field_menu_stat"))
        if (global.menuchoice[2] == 1)
            draw_text((42 + xx), (120 + yy), scr_gettext("field_menu_cell"))
        if (global.menuno == 1 || global.menuno == 5)
        {
            for (i = 0; i < 8; i += 1)
                draw_text((124 + xx), ((30 + yy) + (i * 16)), global.itemname[i])
            draw_text((124 + xx), (170 + yy), scr_gettext("item_menu_use"))
            draw_text(((124 + xx) + 48), (170 + yy), scr_gettext("item_menu_info"))
            draw_text(((124 + xx) + 105), (170 + yy), scr_gettext("item_menu_drop"))
        }
    }
    if (global.menuno == 3)
    {
        for (i = 0; i < 7; i += 1)
            draw_text((124 + xx), ((30 + yy) + (i * 16)), global.phonename[i])
    }
    if (global.menuno == 6)
    {
        scr_itemname()
        for (i = 0; i < 8; i += 1)
            draw_text((124 + xx), ((30 + yy) + (i * 16)), global.itemname[i])
    }
    if (global.menuno == 7)
    {
        scr_storagename(300)
        for (i = 0; i < 10; i += 1)
            draw_text((124 + xx), ((30 + yy) + (i * 16)), global.itemname[i])
    }
    if (global.menuno == 2)
    {
        stat_x = (116 + xx)
        if (global.language == "ja")
            stat_x -= 3
        exp_x = (stat_x + 90)
        kills_x = exp_x
        name_y = (32 + yy)
        lv_y = (62 + yy)
        hp_y = (78 + yy)
        at_y = (110 + yy)
        df_y = (126 + yy)
        weapon_y = (156 + yy)
        armor_y = (172 + yy)
        gold_y = (192 + yy)
        kills_y = (192 + yy)
        if (global.language == "ja")
        {
            weapon_y -= 2
            gold_y += 2
            kills_y += 2
        }
        draw_text(stat_x, name_y, scr_gettext("stat_menu_name"))
        draw_text(stat_x, lv_y, scr_gettext("stat_menu_lv", string(global.lv)))
        draw_text(stat_x, hp_y, scr_gettext("stat_menu_hp", string(global.hp), string(global.maxhp)))
        draw_text(stat_x, at_y, scr_gettext("stat_menu_at", string((global.at - 10)), string(global.wstrength)))
        draw_text(stat_x, df_y, scr_gettext("stat_menu_df", string((global.df - 10)), string(global.adef)))
        draw_text(stat_x, weapon_y, scr_gettext("stat_menu_weapon", scr_gettext(("item_name_" + string(global.weapon)))))
        armorname = scr_gettext(("item_name_" + string(global.armor)))
        if (global.armor == 64)
            armorname = scr_gettext("stat_armor_temmie")
        draw_text(stat_x, armor_y, scr_gettext("stat_menu_armor", armorname))
        draw_text(stat_x, gold_y, scr_gettext("stat_menu_gold"))
        if (global.kills > 20)
            draw_text(kills_x, kills_y, scr_gettext("stat_menu_kills", string(global.kills)))
        if (string_length(global.charname) >= 7)
        {
            x2 = (192 + xx)
            y2 = (32 + yy)
            scale = 1
            if (global.language == "ja")
            {
                x2 += 16
                y2 += 20
                scale = 0.5
            }
            draw_text_transformed(x2, y2, scr_gettext("stat_menu_namehack"), scale, scale, 0)
        }
        draw_text(exp_x, at_y, scr_gettext("stat_menu_exp", string(global.xp)))
        if (global.lv == 1)
            nextlevel = (10 - global.xp)
        if (global.lv == 2)
            nextlevel = (30 - global.xp)
        if (global.lv == 3)
            nextlevel = (70 - global.xp)
        if (global.lv == 4)
            nextlevel = (120 - global.xp)
        if (global.lv == 5)
            nextlevel = (200 - global.xp)
        if (global.lv == 6)
            nextlevel = (300 - global.xp)
        if (global.lv == 7)
            nextlevel = (500 - global.xp)
        if (global.lv == 8)
            nextlevel = (800 - global.xp)
        if (global.lv == 9)
            nextlevel = (1200 - global.xp)
        if (global.lv == 10)
            nextlevel = (1700 - global.xp)
        if (global.lv == 11)
            nextlevel = (2500 - global.xp)
        if (global.lv == 12)
            nextlevel = (3500 - global.xp)
        if (global.lv == 13)
            nextlevel = (5000 - global.xp)
        if (global.lv == 14)
            nextlevel = (7000 - global.xp)
        if (global.lv == 15)
            nextlevel = (10000 - global.xp)
        if (global.lv == 16)
            nextlevel = (15000 - global.xp)
        if (global.lv == 17)
            nextlevel = (25000 - global.xp)
        if (global.lv == 18)
            nextlevel = (50000 - global.xp)
        if (global.lv == 19)
            nextlevel = (99999 - global.xp)
        if (global.lv >= 20)
            nextlevel = 0
        draw_text(exp_x, df_y, scr_gettext("stat_menu_next", string(nextlevel)))
    }
    if (global.menuno == 4)
    {
        iniread = ossafe_ini_open("undertale.ini")
        name = ini_read_string("General", "Name", scr_gettext("save_menu_empty"))
        love = ini_read_real("General", "Love", 0)
        time = ini_read_real("General", "Time", 1)
        kills = ini_read_real("General", "Kills", 0)
        roome = ini_read_real("General", "Room", 0)
        ossafe_ini_close()
        scr_setfont(fnt_maintext)
        draw_set_color(c_white)
        ossafe_fill_rectangle((54 + xx), (49 + yy), (265 + xx), (135 + yy))
        draw_set_color(c_black)
        ossafe_fill_rectangle((57 + xx), (52 + yy), (262 + xx), (132 + yy))
        draw_set_color(c_white)
        if (global.menucoord[4] == 2)
            draw_set_color(c_yellow)
        minutes = floor((time / 1800))
        seconds = round((((time / 1800) - minutes) * 60))
        if (seconds == 60)
            seconds = 59
        if (seconds < 10)
            seconds = ("0" + string(seconds))
        roomname = scr_roomname(roome)
        lvtext = scr_gettext("save_menu_lv", string(love))
        timetext = scr_gettext("save_menu_time", string(minutes), string(seconds))
        namesize = string_width(substr(name, 1, 6))
        lvsize = string_width(lvtext)
        timesize = string_width(timetext)
        x_center = (xx + 160)
        lvpos = round((((x_center + (namesize / 2)) - (timesize / 2)) - (lvsize / 2)))
        namepos = (70 + xx)
        timepos = (250 + xx)
        if (global.language == "ja")
        {
            namepos -= 6
            timepos += 6
        }
        draw_text(namepos, (60 + yy), name)
        draw_text(lvpos, (60 + yy), lvtext)
        draw_text((timepos - timesize), (60 + yy), timetext)
        if (global.language == "ja")
            scr_drawtext_centered(x_center, (80 + yy), roomname)
        else
            draw_text(namepos, (80 + yy), roomname)
        savepos = (xx + 71)
        returnpos = (xx + 161)
        if (global.language == "ja")
        {
            savepos = (xx + 78)
            returnpos = (xx + 173)
        }
        if (global.menucoord[4] == 0)
            draw_sprite(spr_heartsmall, 0, savepos, (yy + 113))
        if (global.menucoord[4] == 1)
            draw_sprite(spr_heartsmall, 0, returnpos, (yy + 113))
        if (global.menucoord[4] < 2)
        {
            draw_text((savepos + 14), (yy + 110), scr_gettext("save_menu_save"))
            draw_text((returnpos + 14), (yy + 110), scr_gettext("save_menu_return"))
        }
        else
        {
            draw_text((xx + 85), (yy + 110), scr_gettext("save_menu_saved"))
            if control_check_pressed(0)
            {
                global.menuno = -1
                global.interact = 0
                global.menucoord[4] = 0
                control_clear(0)
            }
        }
        if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right))
        {
            if (global.menucoord[4] < 2)
            {
                if (global.menucoord[4] == 1)
                    global.menucoord[4] = 0
                else
                    global.menucoord[4] = 1
                keyboard_clear(vk_left)
                keyboard_clear(vk_right)
            }
        }
        if (control_check_pressed(0) && global.menucoord[4] == 0)
        {
            snd_play(snd_save)
            script_execute(scr_save)
            global.menucoord[4] = 2
            control_clear(0)
        }
        if (control_check_pressed(0) && global.menucoord[4] == 1)
        {
            global.menuno = -1
            global.interact = 0
            global.menucoord[4] = 0
            control_clear(0)
        }
        if control_check_pressed(1)
        {
            global.menuno = -1
            global.interact = 0
            global.menucoord[4] = 0
            control_clear(1)
        }
    }
    if (global.menuno == 0)
    {
        heart_y = 88
        if (global.language == "ja")
            heart_y -= 1
        draw_sprite(spr_heartsmall, 0, (28 + xx), ((heart_y + yy) + (18 * global.menucoord[0])))
    }
    if (global.menuno == 1)
    {
        heart_y = 34
        if (global.language == "ja")
            heart_y -= 1
        draw_sprite(spr_heartsmall, 0, (112 + xx), ((heart_y + yy) + (16 * global.menucoord[1]))) // Heart sprite position
    }
    if (global.menuno == 3)
    {
        heart_y = 34
        if (global.language == "ja")
            heart_y -= 1
        draw_sprite(spr_heartsmall, 0, (112 + xx), ((heart_y + yy) + (16 * global.menucoord[3]))) // Heart sprite position
    }
    if (global.menuno == 6)
    {
        heart_y = 34
        if (global.language == "ja")
            heart_y -= 1
        draw_sprite(spr_heartsmall, 0, (112 + xx), ((heart_y + yy) + (16 * global.menucoord[6]))) // Heart sprite position
    }
    if (global.menuno == 7)
    {
        heart_y = 34
        if (global.language == "ja")
            heart_y -= 1
        draw_sprite(spr_heartsmall, 0, (112 + xx), ((heart_y + yy) + (16 * global.menucoord[7]))) // Heart sprite position
    }
    if (global.menuno == 5)
    {
        heart_y = 174
        if (global.language == "ja")
            heart_y -= 1
        if (global.menucoord[5] == 0)
            draw_sprite(spr_heartsmall, 0, ((112 + xx) + (45 * global.menucoord[5])), (heart_y + yy)) // Heart sprite position
        if (global.menucoord[5] == 1)
            draw_sprite(spr_heartsmall, 0, ((112 + xx) + ((45 * global.menucoord[5]) + 3)), (heart_y + yy)) // Heart sprite position
        if (global.menucoord[5] == 2)
            draw_sprite(spr_heartsmall, 0, ((112 + xx) + ((45 * global.menucoord[5]) + 15)), (heart_y + yy)) // Heart sprite position
    }
    if control_check_pressed(0)
    {
        if (global.menuno == 5)
        {
            if (global.menucoord[5] == 0)
            {
                global.menuno = 9
                script_execute(scr_itemuseb, global.menucoord[1], global.item[global.menucoord[1]])
            }
            if (global.menucoord[5] == 1)
            {
                global.menuno = 9
                script_execute(scr_itemdesc, global.item[global.menucoord[1]])
                script_execute(scr_writetext, 0, "x", 0, 0)
            }
            if (global.menucoord[5] == 2)
            {
                global.menuno = 9
                dontthrow = 0
                if (global.item[global.menucoord[1]] != 23 && global.item[global.menucoord[1]] != 27 && global.item[global.menucoord[1]] != 54 && global.item[global.menucoord[1]] != 56 && global.item[global.menucoord[1]] != 57)
                    script_execute(scr_writetext, 12, "x", 0, 0)
                else
                {
                    if (global.item[global.menucoord[1]] == 23)
                        script_execute(scr_writetext, 23, "x", 0, 0)
                    if (global.item[global.menucoord[1]] == 27)
                    {
                        script_execute(scr_writetext, 0, scr_gettext("item_drop_27"), 0, 0)
                        if instance_exists(obj_rarependant)
                        {
                            with (obj_rarependant)
                                con = 1
                        }
                    }
                    if (global.item[global.menucoord[1]] == 54)
                    {
                        script_execute(scr_writetext, 0, scr_gettext("item_drop_54"), 0, 0)
                        dontthrow = 1
                    }
                    if (global.item[global.menucoord[1]] == 56)
                    {
                        if (!instance_exists(obj_undyne_friendc))
                        {
                            script_execute(scr_writetext, 0, scr_gettext("item_drop_56"), 0, 0)
                            global.flag[494] = 1
                        }
                        else
                        {
                            global.faceemotion = 1
                            script_execute(scr_writetext, 0, scr_gettext("item_drop_56_undyne"), 5, 37)
                            dontthrow = 1
                        }
                    }
                    if (global.item[global.menucoord[1]] == 57)
                    {
                        script_execute(scr_writetext, 0, scr_gettext("item_drop_57"), 0, 0)
                        dontthrow = 1
                    }
                }
                if (dontthrow == 0)
                    script_execute(scr_itemshift, global.menucoord[1], 0)
            }
        }
        if (global.menuno == 3)
        {
            global.menuno = 9
            script_execute(scr_itemuseb, global.menucoord[3], global.phone[global.menucoord[3]])
        }
        if (global.menuno == 6)
        {
            global.menuno = 9
            script_execute(scr_storageget, global.item[global.menucoord[6]], 300)
            if (noroom == 0)
            {
                script_execute(scr_writetext, 16, "x", 0, 0)
                script_execute(scr_itemshift, global.menucoord[6], 0)
            }
            else
                script_execute(scr_writetext, 19, "x", 0, 0)
        }
        if (global.menuno == 7)
        {
            global.menuno = 9
            script_execute(scr_itemget, global.flag[(global.menucoord[7] + 300)])
            if (noroom == 0)
            {
                script_execute(scr_writetext, 17, "x", 0, 0)
                scr_storageshift(global.menucoord[7], 0, 300)
            }
            else
                script_execute(scr_writetext, 18, "x", 0, 0)
        }
        if (global.menuno == 1)
        {
            global.menuno = 5
            global.menucoord[5] = 0
        }
        if (global.menuno == 0)
            global.menuno += (global.menucoord[0] + 1)
        if (global.menuno == 3)
        {
            script_execute(scr_phonename)
            global.menucoord[3] = 0
        }
        if (global.menuno == 1)
        {
            if (global.item[0] != 0)
            {
                global.menucoord[1] = 0
                script_execute(scr_itemname)
            }
            else
                global.menuno = 0
        }
    }
    if keyboard_check_pressed(vk_up)
    {
        if (global.menuno == 0)
        {
            if (global.menucoord[0] != 0)
                global.menucoord[0] -= 1
        }
        if (global.menuno == 1)
        {
            if (global.menucoord[1] != 0)
                global.menucoord[1] -= 1
        }
        if (global.menuno == 3)
        {
            if (global.menucoord[3] != 0)
                global.menucoord[3] -= 1
        }
        if (global.menuno == 6)
        {
            if (global.menucoord[6] != 0)
                global.menucoord[6] -= 1
        }
        if (global.menuno == 7)
        {
            if (global.menucoord[7] != 0)
                global.menucoord[7] -= 1
        }
    }
    if keyboard_check_pressed(vk_down)
    {
        if (global.menuno == 0)
        {
            if (global.menucoord[0] != 2)
            {
                if (global.menuchoice[(global.menucoord[0] + 1)] != 0)
                    global.menucoord[0] += 1
            }
        }
        if (global.menuno == 1)
        {
            if (global.menucoord[1] != 7)
            {
                if (global.item[(global.menucoord[1] + 1)] != 0)
                    global.menucoord[1] += 1
            }
        }
        if (global.menuno == 3)
        {
            if (global.menucoord[3] != 7)
            {
                if (global.phone[(global.menucoord[3] + 1)] != 0)
                    global.menucoord[3] += 1
            }
        }
        if (global.menuno == 6)
        {
            if (global.menucoord[6] != 7)
            {
                if (global.item[(global.menucoord[6] + 1)] != 0)
                    global.menucoord[6] += 1
            }
        }
        if (global.menuno == 7)
        {
            if (global.menucoord[7] != 9)
            {
                if (global.flag[(global.menucoord[7] + 301)] != 0)
                    global.menucoord[7] += 1
            }
        }
    }
    if (control_check_pressed(1) && buffer >= 0)
    {
        if (global.menuno == 0)
        {
            global.menuno = -1
            global.interact = 0
        }
        else if (global.menuno <= 3)
            global.menuno = 0
        if (global.menuno == 5)
            global.menuno = 1
    }
    if keyboard_check_pressed(vk_right)
    {
        if (global.menuno == 5)
        {
            if (global.menucoord[5] != 2)
                global.menucoord[5] += 1
        }
    }
    if keyboard_check_pressed(vk_left)
    {
        if (global.menuno == 5)
        {
            if (global.menucoord[5] != 0)
                global.menucoord[5] -= 1
        }
    }
    if control_check_pressed(2)
    {
        if (global.menuno == 0)
        {
            global.menuno = -1
            global.interact = 0
        }
    }
    if (currentmenu < global.menuno && global.menuno != 9)
        snd_play(snd_select)
    else if (global.menuno >= 0 && global.menuno < 6)
    {
        if (currentspot != global.menucoord[global.menuno])
            snd_play(snd_squeak)
    }
}
if (global.menuno == 9 && instance_exists(obj_dialoguer) == 0)
{
    global.menuno = -1
    global.interact = 0
}
