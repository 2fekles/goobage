function scr_playersounds()
{
	
	 if (state == 64)
        {
            if (!event_isplaying(superjumpsnd))
            {
                fmod_event_setParameter(superjumpsnd, "state", 0, 1)
                fmod_event_play(superjumpsnd)
            }
        }
        else if (state == 62)
            fmod_event_setParameter(superjumpsnd, "state", 1, 1)
        else if (state != 62)
        {
            if (event_isplaying(superjumpsnd) && fmod_event_getParameter(superjumpsnd, "state") < 1)
                fmod_event_stop(superjumpsnd, 1)
            else if (!event_isplaying(superjumpsnd))
                fmod_event_setParameter(superjumpsnd, "state", 0, 1)
        }
	if (sprite_index == spr_player_Sjumpcancelstart)
		if event_isplaying(superjumpsnd)
            fmod_event_stop(superjumpsnd, 1)
    if event_isplaying(superjumpsnd)
            fmod_event_set3DPosition(superjumpsnd, x, y)
	if (event_isplaying("event:/sfx/pep/suplexdash") && state != 21)
	    fmod_event_stop("event:/sfx/pep/suplexdash", 1)
}
