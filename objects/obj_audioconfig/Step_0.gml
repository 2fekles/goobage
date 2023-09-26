scr_getinput()
if (updown_buffer > 0)
{
    updown_buffer--
    if ((!key_up2) && (!key_down2) && (!keyboard_check_pressed(vk_up)) && (!keyboard_check_pressed(vk_down)))
        updown_buffer = 0
}
else
{
    if ((key_up2 || keyboard_check_pressed(vk_up)) && audio_select > -1)
    {
        updown_buffer = updown_max
        audio_select -= 1
        scr_soundeffect(sfx_step)
    }
    if ((key_down2 || keyboard_check_pressed(vk_down)) && audio_select < 2)
    {
        updown_buffer = updown_max
        audio_select += 1
        scr_soundeffect(sfx_step)
    }
}
if (key_jump || keyboard_check_pressed(vk_return))
{
    switch audio_select
    {
        case -1:
            self.set_audio_config()
            with (obj_option)
            {
                visible = true
                key_jump = 0
                buffer = 15
            }
            instance_destroy()
            break
        default:
		{
            self.set_audio_config()
			scr_soundeffect(sfx_enemyprojectile)
		}
            break
    }

}
if (key_buffer > 0)
    key_buffer--
else
{
    if ((-key_left) || keyboard_check(vk_left))
    {
        switch audio_select
        {
            case 0:
			if key_attack
                audiosaved_master-= 10
				else
				audiosaved_master--
                break
            case 1:
			if key_attack
                audiosaved_music-= 10
				else
				audiosaved_music--
                break
            case 2:
			if key_attack
                audiosaved_sfx-= 10
				else
				audiosaved_sfx--
                break
        }

        key_buffer = key_max
    }
    if (key_right || keyboard_check(vk_right))
    {
        switch audio_select
        {
            case 0:
			if key_attack
			audiosaved_master+= 10
			else
		
                audiosaved_master++
                break
            case 1:
			if key_attack
                audiosaved_music+= 10
				else
				audiosaved_music++
                break
            case 2:
			if key_attack
                audiosaved_sfx+= 10
				else
				audiosaved_sfx++
                break
        }

        key_buffer = key_max
    }
}
audiosaved_master = clamp(audiosaved_master, 0, 100)
audiosaved_music = clamp(audiosaved_music, 0, 100)
audiosaved_sfx = clamp(audiosaved_sfx, 0, 100)



