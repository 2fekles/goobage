if (drop == 0)
{
	scr_soundeffect(sfx_bananaslip)
    with (obj_player)
    {
        instance_destroy(other)
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
