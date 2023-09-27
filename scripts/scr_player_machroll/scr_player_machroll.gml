function scr_player_machroll()
{
	if (!(place_meeting(x, (y + 1), obj_railh)))
	    hsp = (xscale * movespeed)
	else if place_meeting(x, (y + 1), obj_railh)
	    hsp = ((xscale * movespeed) - 5)
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = ((xscale * movespeed) + 5)
	mach2 = 100
	machslideAnim = 1
	move = (key_right + key_left)
	var _css = sprite_index == spr_player_crouchslip || sprite_index == spr_player_jumpdive1 || sprite_index == spr_player_jumpdive2
	if (scr_solid((x + 1), y) && xscale == 1 && (!(place_meeting((x + sign(hsp)), y, obj_slope))) && (!(place_meeting((x + sign(hsp)), y, obj_destructibles))))
	{
	    scr_soundeffect(sfx_bumpwall)
	    hsp = 0
	    image_speed = 0.35
	    flash = 0
	    combo = 0
	    state = 71
	    hsp = -2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create((x + 10), (y + 10), obj_bumpeffect)
	}
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5 && stompAnim == 0 && _css)
    {
        vsp /= 20
        jumpstop = 1
    }
	if (scr_solid((x - 1), y) && xscale == -1 && (!(place_meeting((x + sign(hsp)), y, obj_slope))) && (!(place_meeting((x + sign(hsp)), y, obj_destructibles))))
	{
	    scr_soundeffect(sfx_bumpwall)
	    hsp = 0
	    image_speed = 0.35
	    flash = 0
	    combo = 0
	    state = 71
	    hsp = 2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create((x - 10), (y + 10), obj_bumpeffect)
	}
	if ((!instance_exists(obj_cloudeffect)) && grounded)
	    instance_create(x, (y + 43), obj_cloudeffect)
		if scr_slope()
                movespeed += 0.1
		if !_css
		{
			
	if grounded
	    sprite_index = spr_machroll
		else
		{
		sprite_index = spr_dive
		}
		}
		if sprite_index == spr_dive
	    vsp = 15
		if grounded && key_jump2 && !place_meeting(x,y - 1, obj_solid) && _css
    {
        sprite_index = spr_player_jumpdive1
        image_index = 0
        vsp = -11
        with (instance_create(x, y, obj_superdashcloud))
        {
            image_xscale = other.xscale
            
        }
    }
	if (grounded && (sprite_index == spr_player_jumpdive1 || sprite_index == spr_player_jumpdive2) && vsp > 0)
    {
		
        sprite_index = spr_player_crouchslip
        jumpstop = 0
    }
	if (sprite_index == spr_player_jumpdive1 && floor(image_index) == (image_number - 1))
        sprite_index = spr_player_jumpdive2
	if !grounded && sprite_index == spr_player_crouchslip && sprite_index != spr_player_jumpdive1
	sprite_index = spr_player_jumpdive2
	
	
	image_speed = 0.8
	if (grounded && (!key_down) && (!(scr_solid((x + 27), (y - 32)))) && (!(scr_solid((x - 27), (y - 32)))) && (!(scr_solid(x, (y - 32)))) && (!(scr_solid(x, (y - 16)))))
	{
	    image_index = 0
	    scr_soundeffect(sfx_rollgetup)
	    state = 69
	    if (character == "P")
	        sprite_index = spr_player_rollgetup
	}
	if key_jump && sprite_index = spr_dive
	{
	    
	        image_index = 0
	        state = 90
	        sprite_index = spr_bodyslamstart
	        vsp = -5
	    }
}
