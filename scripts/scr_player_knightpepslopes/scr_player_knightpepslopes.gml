function scr_player_knightpepslopes()
{
	if ((x + hsp) == xprevious)
        slope_buffer--
    else
        slope_buffer = 20
    alarm[5] = 2
    alarm[7] = 60
    if (knightmiddairstop == 0)
        hsp = (xscale * movespeed)
    image_speed = 0.35
    if key_jump
        input_buffer_jump = 0
    if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0)
    {
        vsp /= 2
        jumpstop = 1
    }
    if (grounded && vsp > 0)
        jumpstop = 0
		if place_meeting(x + sign(hsp),y,obj_ratblock)
	{
		
				scr_soundeffect(sfx_punch)
		with instance_place(x + sign(hsp),y,obj_ratblock)
		{
			instance_destroy()
		}
	
	}
    if ((!scr_slope()) && grounded && !place_meeting(x,y+1,obj_slopePlatform))
        sprite_index = spr_knightpep_charge
    if scr_slope() || place_meeting(x,y+1,obj_slopePlatform)
        sprite_index = spr_knightpep_downslope
    if (input_buffer_jump < 8)
    {
        if (grounded || (!doublejump))
        {
            vsp = -11
            sprite_index = spr_knightpep_fly
            image_index = 0
            input_buffer_jump = 8
            if (!grounded)
            {
                vsp = -11
                doublejump = 1
                sprite_index = spr_knightpep_doublejump
            }
        }
    }
    if ((sprite_index == spr_knightpep_doublejump || sprite_index == spr_knightpep_fly) && floor(image_index) == (image_number - 1))
        image_index = (image_number - 1)
    if (scr_solid((x + sign(hsp)), y) && ((!scr_slope()) || place_meeting((x + sign(hsp)), (y - 2), obj_solid)) && (!(place_meeting((x + sign(hsp)), y, obj_slope))) && (!(place_meeting((x + sign(hsp)), y, obj_destructibles))))
    {
        movespeed = 0
        vsp = -6
        sprite_index = spr_knightpep_bump
        image_index = floor((image_number - 1))
        state = -1
        scr_soundeffect(sfx_groundpound)
    }
    if scr_slope()
    {
        with (instance_place(x, (y + 1), obj_slope))
        {
            if (other.xscale == (-sign(image_xscale)))
            {
                if (other.movespeed < 17)
                    other.movespeed += 0.25
            }
        }
    }
	if place_meeting(x, y + 1, obj_slopePlatform)
	{
		with (instance_place(x, (y + 1), obj_slopePlatform))
        {
            if (other.xscale == (-sign(image_xscale)))
            {
                if (other.movespeed < 17)
                    other.movespeed += 0.25
            }
        }
	}
    if ((!grounded) && key_down2 && sprite_index != spr_knightpep_downtrust)
    {
        flash = 1
        sprite_index = spr_knightpep_downtrust
        vsp = -5
        hsp = 0
        movespeed = 0
        state = 23
    }
}
