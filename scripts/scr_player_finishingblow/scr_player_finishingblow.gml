function scr_player_finishingblow()
{
	if movespeed != 0
	hsp = xscale * movespeed
	
		if afterima > 0
		afterima--
		else
		{
			afterima = 5
			with (instance_create(x, y, obj_mach3effect))
            {
                blue = 1
				full = 1
                spd = 0.05
                image_blend = make_color_rgb(44, 126, 228)
                image_alpha = 1.25
                spr_palette = other.spr_palette
                paletteselect = other.paletteselect
				
				
            }
		}
	if (floor(image_index) == (image_number - 1))
	    state = 0
	if (floor(image_index) == 6 && (!instance_exists(obj_swordhitbox)))
	{
		vsp = -5
	    scr_soundeffect(sfx_punch)
	    scr_soundeffect(sfx_killingblow)
	    instance_create(x, y, obj_swordhitbox)
	}
	if (floor(image_index) == 0 && (!instance_exists(obj_swordhitbox)) && sprite_index == spr_player_swingdingend)
	{
		vsp = -5
	    scr_soundeffect(sfx_killingblow)
	    instance_create(x, y, obj_swordhitbox)
	}
	image_speed = 0.35
	landAnim = 0
}
