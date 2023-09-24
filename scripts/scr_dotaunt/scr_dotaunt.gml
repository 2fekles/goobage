
function scr_dotaunt()
{
scr_soundeffect(sfx_taunt)
	    taunttimer = 20
	    tauntstoredmovespeed = movespeed
	    tauntstoredsprite = sprite_index
	    tauntstoredstate = state
	    state = 50
	    image_index = random_range(0, (sprite_get_number(spr_taunt) - 1))
	    sprite_index = spr_taunt
	    instance_create(x, y, obj_taunteffect)
}