var ch, spacing, xstart_top, ystart_top, limit_top, xstart_right, ystart_right, limit_right, xstart_bottom, ystart_bottom, limit_bottom, xstart_left, ystart_left, count, count_top, count_right, count_bottom, count_left, xx, yy, i;
ch = "n" // Different writer
spacing = 14
xstart_top = 318
ystart_top = 97
limit_top = 20
xstart_right = (room_width - 6)
ystart_right = 116
limit_right = 20
xstart_bottom = (room_width - 40)
ystart_bottom = (room_height - 20)
limit_bottom = floor(((6 - xstart_bottom) / (-spacing)))
xstart_left = -1
ystart_left = -1
if (global.language == "ja")
{
    ch = "ン"
    spacing = 28
    xstart_top = 317
    ystart_top = 97
    limit_top = floor((((room_width - 6) - xstart_top) / spacing))
    xstart_right = (room_width - 6)
    ystart_right = (ystart_top + 30)
    limit_right = floor((((room_height - 16) - ystart_right) / spacing))
    xstart_bottom = (room_width - 34)
    ystart_bottom = (room_height - 16)
    limit_bottom = floor(((6 - xstart_bottom) / (-spacing)))
    xstart_left = 6
    ystart_left = (room_height - 46)
}
count = obj_questionasker.mettamt
count_top = count
if (count > limit_top)
    count_top = limit_top
count -= count_top
count_right = count
if (count > limit_right)
    count_right = limit_right
count -= count_right
count_bottom = count
if (count > limit_bottom)
    count_bottom = limit_bottom
count -= count_bottom
count_left = count
scr_setfont(fnt_main)
draw_set_color(c_white)
xx = xstart_top
yy = ystart_top
for (i = 0; i < count_top; i++)
{
    draw_text((xx + round(random(1))), (yy + round(random(1))), ch)
    xx += spacing
}
if (global.language != "ja")
    spacing += 2
xx = xstart_right
yy = ystart_right
for (i = 0; i < count_right; i++)
{
    draw_text_transformed((xx + round(random(1))), (yy + round(random(1))), ch, 1, 1, 270)
    yy += spacing
}
xx = xstart_bottom
yy = ystart_bottom
for (i = 0; i < count_bottom; i++)
{
    draw_text_transformed((xx + round(random(1))), (yy + round(random(1))), ch, 1, 1, 180)
    xx -= spacing
}
xx = xstart_left
yy = ystart_left
for (i = 0; i < count_left; i++)
{
    draw_text_transformed((xx + round(random(1))), (yy + round(random(1))), ch, 1, 1, 90)
    yy -= spacing
}
