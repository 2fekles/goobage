if time < 1000
{
	if audio_is_playing(sfx_collecttopping)
        audio_stop_sound(sfx_collecttopping)
create_collect(obj_player.x, obj_player.y, choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect))
scr_soundeffect_pitched(sfx_collecttopping,irandom_range(9,12) / 10)
time++

alarm[1] = 0.5
}



