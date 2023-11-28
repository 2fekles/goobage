function scr_playersounds()
{
	
	if (state == 17 && (!audio_is_playing(sfx_knightslide)))
	    scr_soundeffect(sfx_knightslide)
	else if (state != 17 && audio_is_playing(sfx_knightslide))
	    audio_stop_sound(sfx_knightslide)
	if ((sprite_index == spr_bombpeprun || sprite_index == spr_bombpeprunabouttoexplode) && (!audio_is_playing(sfx_bombpep1)))
	    scr_soundeffect(sfx_bombpep1)
	else if (sprite_index != spr_bombpeprun && sprite_index != spr_bombpeprunabouttoexplode && audio_is_playing(sfx_bombpep1))
	    audio_stop_sound(sfx_bombpep1)
	if (state != 64 && audio_is_playing(sfx_superjumpprep))
	    audio_stop_sound(sfx_superjumpprep)
	if (state != 64 && audio_is_playing(sfx_superjumphold))
	    audio_stop_sound(sfx_superjumphold)
	if (sprite_index == spr_player_tumblestart && (!audio_is_playing(sfx_tumble1)) && floor(image_index) < 11)
	    scr_soundeffect(sfx_tumble1)
	if (sprite_index == spr_player_tumblestart && floor(image_index) == 11 && (!audio_is_playing(sfx_tumble2)))
	{
	    scr_soundeffect(sfx_tumble2)
	    audio_stop_sound(sfx_tumble1)
	}
	if ((sprite_index == spr_player_tumble || sprite_index == spr_machroll) && (!audio_is_playing(sfx_tumble3)))
	    scr_soundeffect(sfx_tumble3)
	if (state != 1 && sprite_index != spr_machroll)
	{
	    audio_stop_sound(sfx_tumble1)
	    audio_stop_sound(sfx_tumble2)
	    audio_stop_sound(sfx_tumble3)
	}
	if (event_isplaying("event:/sfx/pep/suplexdash") && state != 21)
	    fmod_event_stop("event:/sfx/pep/suplexdash",1)
}
