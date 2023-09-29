if ds_list_find_index(global.baddieroom, id) == -1
{
	scr_soundeffect(sfx_ratgrab)
	scr_soundeffect(sfx_ratdead)
	instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
	ds_list_add(global.baddieroom, id)
with (instance_create(x, y, obj_sausageman_dead))
    {
        sprite_index = other.deadspr
        
    }
}


