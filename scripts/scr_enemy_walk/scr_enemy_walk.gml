function scr_enemy_walk()
{
	if (object_index != obj_ancho)
	hsp = image_xscale * movespeed
	else
	    hsp = 0
	sprite_index = walkspr
	image_speed = 0.35
	if ((scr_solid((x + 1), y) && image_xscale == 1) || (scr_solid((x - 1), y) && image_xscale == -1) || place_meeting((x + hsp), y, obj_hallway))
	{
	    if (!(place_meeting((x + sign(hsp)), y, obj_slope)))
	    {
	        if (object_index == obj_forknight)
	        {
	            image_xscale *= -1
	            image_index = 0
	            sprite_index = spr_forknight_turn
	            state = 92
	        }
	        else
	            image_xscale *= -1
	    }
	}
	if (object_index != obj_ancho)
	{
	    if (!((scr_solid((x + (image_xscale * 15)), (y + 31)) || place_meeting((x + (image_xscale * 15)), (y + 31), obj_platform))))
	    {
	        if (movespeed > 0 && grounded)
	        {
	            if (object_index == obj_ninja)
	            {
	                vsp = -11
	                image_index = 0
	                image_xscale = (-(sign((x - obj_player.x))))
	                state = 94
	            }
	            else if (object_index == obj_forknight)
	            {
	                image_xscale *= -1
	                image_index = 0
	                sprite_index = spr_forknight_turn
	                state = 92
	            }
	            else
	                image_xscale *= -1
	        }
	    }
	}
}
