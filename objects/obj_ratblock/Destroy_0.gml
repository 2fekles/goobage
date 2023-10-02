if ds_list_find_index(global.baddieroom, id) == -1
{
	scr_soundeffect(sfx_ratgrab)
	scr_soundeffect(sfx_ratdead)
	instance_create(x- sprite_width, y- sprite_height, obj_slapstar)
    instance_create(x- sprite_width, y- sprite_height, obj_slapstar)
    instance_create(x- sprite_width, y- sprite_height, obj_slapstar)
    instance_create(x- sprite_width, y- sprite_height, obj_baddiegibs)
    instance_create(x- sprite_width, y- sprite_height, obj_baddiegibs)
    instance_create(x- sprite_width, y- sprite_height, obj_baddiegibs)
	ds_list_add(global.baddieroom, id)
	instance_create(x - sprite_width, y- sprite_height, obj_genericpoofeffect)
with (instance_create(x- sprite_width, y- sprite_height, obj_sausageman_dead))
    {
        sprite_index = other.deadspr
        
    }
}


