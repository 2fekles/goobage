if (obj_player.state != 89 && obj_player.state != 16 && obj_player.state != 8 && obj_player.state != 94 && obj_player.state != 69 && obj_player.state != 21 && obj_player.state != 70 && obj_player.state != 41 && obj_player.state != 34 && obj_player.state != 39 && obj_player.state != 42 && obj_player.state != 36 && obj_player.state != 32 && obj_player.state != 62)
{
    if (blue == 0)
        instance_destroy()
}
if (blue != 0)
    image_alpha -= spd
if (image_alpha <= 0 && blue != 0)
    instance_destroy()
