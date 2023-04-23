var str, result, lastch, i, ch, halfkata, daku_from, daku_to, pos, handaku_from, handaku_to;
if (global.language == "en") // If for the accent marks
{
    str = argument0
    result = ""
    lastch = ""
    for (i = 1; i <= string_length(str); i++)
    {
        ch = ord(string_char_at(str, i))
        if (ch != 8)
        {
            lastch = chr(ch)
            result += lastch
        }
    }
    return result;
}
else
{
    str = argument0
    result = ""
    lastch = ""
    for (i = 1; i <= string_length(str); i++)
    {
        ch = ord(string_char_at(str, i))
        if (ch >= 12449 && ch <= 12534)
            ch -= 96
        else if (ch >= 65377 && ch <= 65439)
        {
            halfkata = "。「」、・をぁぃぅぇぉャュョッーあいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわん゛゜"
            ch = ord(string_char_at(halfkata, (ch - 65376)))
            if (lastch != "")
            {
                if (ch == 12443)
                {
                    daku_from = "かきくけこさしすせそたちつてとはひふへほ"
                    daku_to = "がぎぐげござじずぜぞだぢづでどばびぶべぼ"
                    pos = string_pos(lastch, daku_from)
                    if (pos != 0)
                        ch = ord(string_char_at(daku_to, pos))
                }
                else if (ch == 12444)
                {
                    handaku_from = "はひふへほ"
                    handaku_to = "ぱぴぷぺぽ"
                    pos = string_pos(lastch, handaku_from)
                    if (pos != 0)
                        ch = ord(string_char_at(handaku_to, pos))
                }
            }
        }
        lastch = chr(ch)
        result += lastch
    }
    return result;
}
