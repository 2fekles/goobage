
    if (obj_pause.pause == 1)
    {
        obj_pause.pause = 0
        instance_activate_all()
		instance_activate_object(obj_fmod)
        audio_resume_all()
    }
    else if (obj_pause.pause == 0)
    {
        audio_pause_all()
        obj_pause.pause = 1
        instance_deactivate_all(true)
        instance_activate_object(obj_pause)
		instance_activate_object(obj_fmod)
    }
    fadein = 1
if fadein == 1
    instance_destroy()
