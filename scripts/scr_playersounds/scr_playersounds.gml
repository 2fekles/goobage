function scr_playersounds()
{
	
	 if (state == 64)
        {
            if (!event_isplaying("event:/sfx/pep/superjump"))
            {
                fmod_event_setParameter("event:/sfx/pep/superjump", "state", 0, 1)
                fmod_soundeffect("event:/sfx/pep/superjump")
            }
        }
        else if (state == 62)
            fmod_event_setParameter("event:/sfx/pep/superjump", "state", 1, 1)
        else if (state != 62)
        {
            if (event_isplaying("event:/sfx/pep/superjump") && fmod_event_getParameter("event:/sfx/pep/superjump", "state") < 1)
                fmod_event_stop("event:/sfx/pep/superjump", 1)
            else if (!event_isplaying("event:/sfx/pep/superjump"))
                fmod_event_setParameter("event:/sfx/pep/superjump", "state", 0, 1)
        }
	if (sprite_index == spr_player_Sjumpcancelstart)
            fmod_event_stop("event:/sfx/pep/superjump", 1)
        if event_isplaying("event:/sfx/pep/superjump")
            fmod_event_set3DPosition("event:/sfx/pep/superjump", x, y)
	if (event_isplaying("event:/sfx/pep/suplexdash") && state != 21)
	    fmod_event_stop("event:/sfx/pep/suplexdash",1)
}
