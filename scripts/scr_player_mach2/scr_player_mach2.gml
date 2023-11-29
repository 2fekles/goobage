function scr_player_mach2()
{
	if (character == "P")
	{
	    if (windingAnim < 2000)
	        windingAnim++
	}
	if (scr_slope() && hsp != 0 && grounded)
            scr_player_addslopemomentum(0.1, 0.2)
	hsp = (xscale * movespeed)
	if ((!(place_meeting(x, (y + 1), obj_railh))) && (!(place_meeting(x, (y + 1), obj_railh2))))
	    hsp = (xscale * movespeed)
	else if place_meeting(x, (y + 1), obj_railh)
	    hsp = ((xscale * movespeed) - 5)
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = ((xscale * movespeed) + 5)
	move2 = (key_right2 + key_left2)
	
	move = (key_right + key_left)
	if (character == "N")
	{
	    if (movespeed < 24 && move == xscale)
	    {
	        movespeed += 0.05
	        if ((!instance_exists(obj_crazyruneffect)) && movespeed > 12)
	            instance_create(x, y, obj_crazyruneffect)
	    }
	    else if (movespeed > 12 && move != xscale)
	        movespeed -= 0.05
	}
	crouchslideAnim = 1
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5)
	{
	    vsp /= 10
	    jumpstop = 1
	}
	if (grounded && vsp > 0)
	    jumpstop = 0
	if (input_buffer_jump < 8 && grounded && (!((move == 1 && xscale == -1))) && (!((move == -1 && xscale == 1))))
	{
	    image_index = 0
	    sprite_index = spr_secondjump1
	    fmod_soundeffect("event:/sfx/pep/jump",x,y)
	    vsp = -11
	}
	if (grounded && vsp > 0)
	{
	    if (machpunchAnim == 0 && sprite_index != spr_mach && sprite_index != spr_player_mach3 && sprite_index != spr_player_machhit)
	    {
	        if (sprite_index != spr_player_machhit && sprite_index != spr_player_rollgetup && sprite_index != spr_player_mach1)
	            sprite_index = spr_mach
	    }
	    if (machpunchAnim == 1)
	    {
	        if (punch == 0)
	            sprite_index = spr_machpunch1
	        if (punch == 1)
	            sprite_index = spr_machpunch2
	        if (floor(image_index) == 4 && sprite_index == spr_machpunch1)
	        {
	            punch = 1
	            machpunchAnim = 0
	        }
	        if (floor(image_index) == 4 && sprite_index == spr_machpunch2)
	        {
	            punch = 0
	            machpunchAnim = 0
	        }
	    }
	}
	if (!grounded)
	    machpunchAnim = 0
	if grounded
	{
	    if (movespeed < 12)
	        movespeed += 0.1
	    if (movespeed >= 12)
	    {
	        machhitAnim = 0
	        state = 89
	        flash = 1
	        if (sprite_index != spr_player_rollgetup)
	            sprite_index = spr_mach4
	        instance_create(x, y, obj_jumpdust)
	    }
	}
	if key_jump
	    input_buffer_jump = 0
	if (key_down && sprite_index != spr_player_mach1 && (!(place_meeting(x, y, obj_dashpad))))
	{
	    instance_create(x, y, obj_jumpdust)
	    flash = 0
	    state = 36
	    vsp = 10
	}
	if (((!grounded) && place_meeting((x + hsp), y, obj_solid) && (!(place_meeting((x + hsp), y, obj_destructibles))) && (!(place_meeting((x + sign(hsp)), y, obj_slope)))) || (grounded && place_meeting((x + hsp), (y - 64), obj_solid) && (!(place_meeting((x + hsp), y, obj_destructibles))) && (!(place_meeting((x + hsp), y, obj_metalblock))) && place_meeting(x, (y + 1), obj_slope)))
	{
	    wallspeed = movespeed
	    state = 16
	}
	if (grounded && (!scr_slope()) && place_meeting((x + hsp), y, obj_solid) && (!(place_meeting((x + hsp), y, obj_destructibles))) && (!(place_meeting((x + sign(hsp)), y, obj_slope))))
	{
	    movespeed = 0
	    state = 0
	}
	if ((!instance_exists(obj_dashcloud)) && grounded)
	{
	    with (instance_create(x, y, obj_dashcloud))
	        image_xscale = other.xscale
	}
	if (grounded && floor(image_index) == (image_number - 1) && sprite_index == spr_player_rollgetup)
	    sprite_index = spr_player_mach
		if (grounded && floor(image_index) == (image_number - 1) && sprite_index == spr_player_mach1)
	    sprite_index = spr_player_mach
	if ((!grounded) && sprite_index != spr_secondjump2 && sprite_index != spr_mach2jump && sprite_index != spr_player_mach2jump && sprite_index != spr_player_walljumpstart && sprite_index != spr_player_walljumpend&& sprite_index != spr_player_longjump)
	    sprite_index = spr_secondjump1
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_secondjump1)
	    sprite_index = spr_secondjump2
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_walljumpstart)
	    sprite_index = spr_player_walljumpend
	if (key_attack && (!(place_meeting((x + xscale), y, obj_solid))) && character == "S" && grounded)
	{
	    state = 21
	    movespeed = 0
	}
	if key_taunt2
	{
	    scr_dotaunt()
	}
	if (((!key_attack) && move != xscale && grounded) || (character == "S" && move == 0 && grounded))
	{
	    image_index = 0
	    state = 70
	    scr_soundeffect(sfx_break)
	    sprite_index = spr_machslidestart
	}
	if (move == (-xscale) && grounded && character == "P")
	{
	    scr_soundeffect(sfx_machslideboost)
	    image_index = 0
	    state = 70
	    sprite_index = spr_machslideboost
	}
	if (move == xscale && (!key_attack) && grounded && character == "P")
	    state = 0
	if (sprite_index == spr_player_rollgetup || sprite_index == spr_suplexdash)
        image_speed = 0.4
    else if sprite_index != spr_player_longjump
        image_speed = (abs(movespeed) / 15)
		else if sprite_index = spr_player_longjump && floor(image_index) == (image_number - 1)
		image_speed = 0
		if (key_slap2 && character == "P" && suplexmove == 0 && (!((shotgunAnim == 1 && key_up))))
	{
		if !instance_exists(obj_crazyrunothereffect)
	    instance_create(x, y, obj_crazyrunothereffect)
	    if (!instance_exists(obj_crazyruneffect))
	        instance_create(x, y, obj_crazyruneffect)
	    suplexmove = 1
	    fmod_soundeffect("event:/sfx/pep/suplexdash",x,y)
	    state = 21
		flash = 1
		if ((!instance_exists(obj_superdashcloud)) && grounded)
	    instance_create(x, y, obj_superdashcloud)
	    image_index = 0
	    
	        sprite_index = !grounded ? spr_player_suplexgrabjumpstart : spr_player_suplexdash
	    if movespeed < 6
	    movespeed = 6
	}
	if (key_slap2 && character == "P" && shotgunAnim == 1 && key_up)
	{
	    scr_soundeffect(sfx_killingblow)
	    state = 37
	    with (instance_create(x, y, obj_pistoleffect))
	        image_xscale = other.image_xscale
	    image_index = 0
	    sprite_index = spr_player_shotgun
	    instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet)
	    with (instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet))
	        spdh = 4
	    with (instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet))
	        spdh = -4
	}
}
