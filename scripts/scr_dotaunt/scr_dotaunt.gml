
function scr_dotaunt()
{
scr_soundeffect_pitched(sfx_taunt,irandom_range(9,11) / 10)
	    taunttimer = 20
	    tauntstoredmovespeed = movespeed
	    tauntstoredsprite = sprite_index
	    tauntstoredstate = state
	    state = 50
	    image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
	    sprite_index = spr_taunt
		image_speed = 0
	    instance_create(x, y, obj_taunteffect)
}