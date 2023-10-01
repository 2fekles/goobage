function scr_scareenemy() //gml_Script_scr_scareenemy
{
    var player = instance_nearest(x, y, obj_player)
    if (state != 107 && state != 104 && state != 103)
    {
        if (player.x > (x - 400) && player.x < (x + 400) && y <= (player.y + 60) && y >= (player.y - 60) && ((player.xscale > 0 && x >= player.x) || (player.xscale < 0 && x <= player.x)))
        {
            if (sprite_index != scaredspr && state != 104 && (player.state == 89 || player.state == 17 || (player.state == 45 && player.sprite_index == spr_player_swingding)))
            {
                state = 92
                sprite_index = scaredspr
                if (x != player.x)
                    image_xscale = (-(sign((x - player.x))))
                scaredbuffer = 100
                if grounded
                    vsp = -3
            }
        }
    }
}

