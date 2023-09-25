if (drop == 0)
{
    with (obj_player)
    {
        other.drop = 1
        state = 59
		sprite_index = spr_player_slipbanan1
        
        vsp = -11
        movespeed += 2
        if (movespeed > 14)
            movespeed = 14
        hsp = (movespeed * xscale)
        image_index = 0
    }
}
