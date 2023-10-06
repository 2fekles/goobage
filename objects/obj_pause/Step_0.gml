if ((!pause) && (!instance_exists(obj_fadeout)))
{
    if (obj_player.key_start && room != rank_room && room != Realtitlescreen && room != timesuproom)
    {
        selected = 0
        if (!instance_exists(obj_pausefadeout))
            instance_create(x, y, obj_pausefadeout)
    }
}
if (instance_exists(obj_pausefadeout) && instance_exists(obj_fadeout))
    instance_destroy(obj_pausefadeout)
if (pause == 1)
{
    scr_getinput()
    application_surface_draw_enable(true)
    if (key_down2 && selected < 2)
    {
        selected += 1
        scr_soundeffect(sfx_step)
    }
    if (key_up2 && selected > 0)
    {
        selected -= 1
        scr_soundeffect(sfx_step)
    }
    if (key_jump && selected == 1)
    {
        var roomname = room_get_name(room)
                if (!global.snickchallenge)
                {
                    var rm = -4
                    rm = global.leveltorestart
                    ds_list_clear(global.saveroom)
                    ds_list_clear(global.baddieroom)
                    if (rm != -4 && rm != -1)
                    {
                        instance_activate_all()
                        global.levelreset = 0
                        scr_playerreset()
                        global.levelreset = 1
                        room_goto(rm)
                        pause = 0
                        obj_player1.targetDoor = "A"
                        if instance_exists(obj_player2)
                            obj_player2.targetDoor = "A"
                        obj_camera.wave = 0
                        obj_camera.alarm[6] = -1
                    }
                    else
                        scr_soundeffect(sfx_enemyprojectile)
                scr_soundeffect(sfx_enemyprojectile)
        }
        
    }
    if (key_jump2 && selected == 2)
    {
        if (room == hub_room1 || room == cowboytask || room == Titlescreen || room == Scootertransition)
        {
            pause = 0
            instance_activate_all()
            room = Realtitlescreen
            with (obj_player1)
            {
                character = "P"
                scr_characterspr()
            }
			 global.leveltorestart = -4
            scr_playerreset()
            obj_player.state = 7
            global.cowboyhat = 0
            obj_player1.targetDoor = "A"
        }
        else
        {
			 global.leveltorestart = -4
            pause = 0
            instance_activate_all()
            scr_playerreset()
            obj_player.targetDoor = "A"
            room = hub_room1
        }
    }
    if (key_jump2 && selected == 0)
    {
        if (!instance_exists(obj_pausefadeout))
            instance_create(x, y, obj_pausefadeout)
    }
}
