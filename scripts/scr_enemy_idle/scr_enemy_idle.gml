function scr_enemy_idle()
{
	hsp = 0
	if (vsp > 1 && (grounded || (grounded && (!(place_meeting(x, y, obj_platform))))))
	{
	    instance_create(x, y, obj_landcloud)
	    image_index = 0
	}
	if vsp >= 0 && sprite_index == scaredspr && scaredbuffer <= 0
    {
        state = 100
        sprite_index = walkspr
		movespeed = 1
    }
    if (scaredbuffer > 0)
        scaredbuffer--
	if (object_index == obj_ancho && sprite_index == scaredspr && floor(image_index) == (image_number - 1))
	    state = 100
	if (object_index == obj_forknight && sprite_index == spr_forknight_turn && floor(image_index) == (image_number - 1))
	    state = 100
	
	image_speed = 0.35
}
