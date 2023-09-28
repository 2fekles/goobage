with (other)
var _transfo = state == 17
if _transfo
{
	with (other)
{
{
            if (hsp != 0)
                xscale = sign(hsp)
            movespeed = abs(hsp)
        }
if !key_attack
        state = 0
		else
		state = 69
        dir = xscale
}
if alarm[0] <= 0
alarm[0] = 50
sprite_index = spr_priest_pray
    if (collect && ds_list_find_index(global.saveroom, id) == -1)
    {
        ds_list_add(global.saveroom, id)
        var val = 500
        global.collect += val
        global.combotime = 60
        with (instance_create((x + 16), y, obj_smallnumber))
            number = string(val)
        scr_soundeffect(sfx_collecttopping)
    }
}



