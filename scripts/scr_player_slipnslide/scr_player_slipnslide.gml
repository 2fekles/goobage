function scr_player_slipnslide()
{
	hsp = (xscale * movespeed)
    if grounded
        movespeed = Approach(movespeed, 0, 0.5)
    if (floor(image_index) == (image_number - 1) && sprite_index != spr_player_rockethitwall)
        image_speed = 0
    else
        image_speed = 0.35

with instance_place(x,y + 1,obj_metalblock)
instance_destroy()
with instance_place(x,y - 1,obj_destructibles)
instance_destroy()
with instance_place(x,y + 1,obj_destructibles)
instance_destroy()
with instance_place(x + sign(hsp),y,obj_destructibles)
instance_destroy()
with instance_place(x - sign(hsp),y,obj_destructibles)
instance_destroy()
    if (grounded && vsp > -1 && sprite_index != spr_player_slipbanan2 && (!(place_meeting(x, (y + 1), obj_metalblock))) && (!(place_meeting(x, (y + 1), obj_destructibles))))
    {
        if (sprite_index == spr_player_rockethitwall)
        {
            sprite_index = spr_player_slipbanan2
            image_index = 0
            image_speed = 0.35
        }
        else
        {
            vsp = -6
            scr_soundeffect(sfx_bumpwall)
            sprite_index = spr_player_rockethitwall
            instance_create(x, (y + 43), obj_bangeffect)
        }
    }
    if (sprite_index == spr_player_slipbanan2)
    {
        if (floor(image_index) == (image_number - 1) && abs(hsp) <= 2)
            state = (0 << 0)
    }
    if (scr_solid((x + xscale), y) && (!scr_slope()) && (scr_solid_slope((x + sign(hsp)), y) || place_meeting((x + sign(hsp)), y, obj_solid)) && (!(place_meeting((x + sign(hsp)), y, obj_destructibles))))
    {
        scr_soundeffect(sfx_bumpwall)
        sprite_index = spr_player_rockethitwall
        instance_create((x + 30), y, obj_bangeffect)
        xscale *= -1
        scr_sleep(1)
    }
}
