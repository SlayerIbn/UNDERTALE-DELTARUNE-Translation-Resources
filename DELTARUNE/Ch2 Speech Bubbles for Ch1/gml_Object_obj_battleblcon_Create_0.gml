if (global.chapter == 1)
{
    mywriter = instance_create((x + 5), (y + 5), obj_writer_ch1)
    mywriter.depth = 9999999
    auto_length = true
    side = 1
    xoffset = 0
    init = false
    reformatted = 0
    remx = x
    remy = y
    remmsgno = -1
    initwritingx = -1
    initwritingy = -1
}
else
{
    mywriter = instance_create((x + 5), (y + 5), obj_writer)
    mywriter.depth = 9999999
    auto_length = false
    side = 1
    xoffset = 0
    init = false
    reformatted = 0
    remx = x
    remy = y
    remmsgno = -1
    initwritingx = -1
    initwritingy = -1
}
