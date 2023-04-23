var newchar, backspace, exc;
if (!keyboard_present)
    exit
if (cantype == 1)
{
    newchar = ""
    backspace = 0
    if keyboard_check_pressed(vk_anykey)
    {
        exc = 0
        if keyboard_check_pressed(vk_right)
            exc = 1
        if keyboard_check_pressed(vk_left)
            exc = 1
        if keyboard_check_pressed(vk_up)
            exc = 1
        if keyboard_check_pressed(vk_down)
            exc = 1
        if keyboard_check_pressed(vk_backspace)
        {
            exc = 1
            backspace = 1
        }
        if control_check_pressed(1)
            exc = 1
        if control_check_pressed(0)
            exc = 1
        if keyboard_check_pressed(vk_escape)
            exc = 1
        if (exc == 0)
        {
            newchar = keyboard_lastchar
            keyboard_lastchar = "" // It stop repeating the last letter
            if (keyboard_check_pressed(ord("Z")) && (!control_check_pressed(0)))
                newchar = "z"
            if (keyboard_check_pressed(ord("X")) && (!control_check_pressed(1)))
                newchar = "x"
        }
        mykey = keyboard_key // It removes the invisible accent character.
        if (mykey == 186)
            newchar = ""
    }
    if (newchar != "")
    {
        if (endbuffer < 30)
            endbuffer = 30
        if (global.language == "ja")
            mystring = scr_kanatype_append(mystring, newchar)
        else
            mystring += newchar
    }
    else if backspace
    {
        if (string_length(mystring) > 1)
            mystring = string_delete(mystring, string_length(mystring), 1)
    }
}
endbuffer -= 1
if (endbuffer < 0 && alarm[0] > 10)
    alarm[0] = 10
