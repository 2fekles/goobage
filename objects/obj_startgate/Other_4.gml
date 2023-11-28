ini_open("saveData.ini")
highscore = ini_read_real("Highscore", string(level), 0)
secret_count = ini_read_string("Secret", string(level), 0)
toppin[0] = ini_read_real("Toppin", (string(level) + "1"), 0)
toppin[1] = ini_read_real("Toppin", (string(level) + "2"), 0)
toppin[2] = ini_read_real("Toppin", (string(level) + "3"), 0)
toppin[3] = ini_read_real("Toppin", (string(level) + "4"), 0)
toppin[4] = ini_read_real("Toppin", (string(level) + "5"), 0)
rank = ini_read_string("Ranks", string(level), "d")
ini_close()
var old_y = y
    if scr_solid(x, y)
    {
        while scr_solid(x, y)
        {
            y--
            if (y < sprite_height)
            {
                y = old_y
                break
            }
            else
                continue
        }
    }
if (object_index == obj_startgate)
{
    for (var i = 1; i <= 3; i++)
    {
        var b = 1
        if (i > secret_count)
            b = 0
        with (instance_create(x, y, obj_startgate_secreteye))
        {
            last_current_time = (current_time + ((600000 * i) * 2))
            timer = last_current_time
            time_x += (i - 1)
            time_y += ((i - 1) * 2)
            if b
                sprite_index = spr_gatesecreteyeopen
            else
                sprite_index = spr_gatesecreteyeclosed
        }
    }
}
scr_hub_bg_reinit(x, y)




