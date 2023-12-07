function scr_pause_normal(){
if ((!pause) && obj_player1.key_start)
{
    scr_delete_pause_image()
    scr_create_pause_image()
    var _cutscenehandler = 0
    with (obj_secretportal)
    {
        if touched
            _cutscenehandler = 1
    }
    with (obj_secretportalstart)
        _cutscenehandler = 1
    if ((!_cutscenehandler) && room != rank_room && room != Realtitlescreen && room != timesuproom)
    {
        selected = 0
        if (!instance_exists(obj_pausefadeout))
            instance_create(x, y, obj_pausefadeout)
    }
}
whiteal = Approach(whiteal, (pause ? 0.7 : 0), 0.1)
if pause
{
    if (!audio_is_playing(mu_leaningpause))
        scr_music(mu_leaningpause)
}
else if (!pause)
{
    if audio_is_playing(mu_leaningpause)
        audio_stop_sound(mu_leaningpause)
		rcx = -100
                    rcy = -100
}
with (obj_player1)
{
    other.paletteselect = paletteselect
    other.spr_palette = spr_palette
}
if pause
{
    scr_getinput()
    var prevselected = selected
    moveselect = ((-key_up2) + key_down2)
    selected += moveselect
    if (moveselect != 0 && selected >= 0 && selected <= 3)
        fmod_soundeffect("event:/sfx/ui/angelmove",x,y)
    selected = clamp(selected, 0, (array_length(pause_menu) - 1))
    
    if key_jump
    {
        switch selected
        {
            case 0:
                if (!instance_exists(obj_pausefadeout))
                    instance_create(x, y, obj_pausefadeout)
                break
            case 2:
                var roomname = room_get_name(room)
                if (!global.snickchallenge)
                {
                    var rm = -4
                    rm = global.leveltorestart
                    ds_list_clear(global.saveroom)
                    ds_list_clear(global.baddieroom)
                    if (rm != -4 && rm != -1)
                    {
                        rcx = -100
                        rcy = -100
                        instance_activate_all()
                        global.levelreset = 0
                        scr_playerreset()
                        global.levelreset = 1
                        room_goto(rm)
                        pause = 0
                        obj_player1.targetDoor = "A"
						obj_player1.state = 60
                        if instance_exists(obj_player2)
                            obj_player2.targetDoor = "A"
                    }
                    else
                        scr_soundeffect(sfx_enemyprojectile)
                }
                break
            case 1:
                fmod_soundeffect("event:/sfx/ui/select",x,y)
                state = states.options
				selected = 0
				screenx = 960
                break
            case 3:
                if (room == tower_1 || room == Titlescreen || room == Scootertransition || (string_copy(room_get_name(room), 1, 5) == "tower" && (!global.panic)))
                {
                    pause = 0
                    instance_activate_all()
                    room = Realtitlescreen
                    with (obj_player1)
                    {
                        character = "P"
                        scr_characterspr()
                    }
                    rcx = -100
                    rcy = -100
                    global.leveltorestart = -4
                    scr_playerreset()
                    obj_player1.state = 60
                    obj_player2.state = 60
                    obj_player1.targetDoor = "A"
                    if instance_exists(obj_player2)
                        obj_player2.targetDoor = "A"
                    global.cowboyhat = 0
                    global.coop = 0
                }
                else
                {
                    pause = 0
                    global.leveltorestart = -4
                    instance_activate_all()
                    global.levelreset = 1
                    obj_player1.targetDoor = ""
                    scr_playerreset()
                    room = obj_player1.backtohubroom
                    obj_player1.backtohubroom = Realtitlescreen
                    obj_player1.state = 0
                    rcx = -100
                    rcy = -100
                }
                break
        }

    }
    if (cursor_index > cursor_sprite_number)
    {
        var p = (cursor_index - floor(cursor_index))
        cursor_index = p
    }
    for (var i = 0; i < array_length(toppin_sprite); i++)
    {
        toppin_index[i] += 0.35
        if (toppin_index[i] > toppin_number[i])
        {
            var t = toppin_index[i]
            p = (t - floor(t))
            toppin_index[i] = p
        }
    }
    toppin_has[0] = global.cheesefollow
    toppin_has[1] = global.pineapplefollow
    toppin_has[2] = global.sausagefollow
    toppin_has[3] = global.shroomfollow
    toppin_has[4] = global.tomatofollow
}

}
function scr_pause_options()
{
	scr_getinput()
    var prevselected = selected
    moveselect = ((-key_up2) + key_down2)
    selected += moveselect
    if (moveselect != 0 && selected >= 0 && selected <= 3)
        fmod_soundeffect("event:/sfx/ui/angelmove",x,y)
    selected = clamp(selected, 0, (array_length(option_menu) - 1))
	if key_slap2
	{
		state = states.pause
		fmod_soundeffect("event:/sfx/ui/back",x,y)
				selected = 1
				screenx = 0
	}
	if key_jump
	{
		switch selected
		{
			case 0:
			fmod_soundeffect("event:/sfx/ui/select",x,y)
                state = states.video
				selected = 0
				screenx = 960 * 2
				break
		}
	}
}