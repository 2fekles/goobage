if obj_player.state == 60 && floor(obj_player.image_index) == (obj_player.image_number - 2) && image_index == 1 && global.panic == 0
{
	scr_soundeffect(sfx_groundpound)
    ds_list_add(global.saveroom, id)
    image_index = 0
    with (obj_camera)
    {
        shake_mag = 3
        shake_mag_acc = (3 / room_speed)
    }
    obj_player.image_index = 0
    obj_player.sprite_index = obj_player.spr_Timesup
	image_index = 0
            ds_list_add(global.saveroom, id)
}
with (obj_player)
{
    if (grounded && x > (other.x - 160) && x < (other.x + 160) && key_up && (state == 0 || state == 68 || state == 69 || state == 89) && (global.panic == 1 || global.snickchallenge == 1))
    {
        targetDoor = "none"
        obj_camera.alarm[2] = -1
        audio_stop_sound(mu_pizzatime)
        audio_stop_sound(mu_snickchallenge)
        audio_stop_sound(mu_snickchallengeend)
        if (!instance_exists(obj_endlevelfade))
            instance_create(x, y, obj_endlevelfade)
        obj_player1.state = 77
        obj_player1.sprite_index = spr_player_lookdoor
        obj_endlevelfade.alarm[0] = 235
        image_index = 0
		scr_savescore(global.leveltosave)
        global.panic = 0
        global.snickchallenge = 0
    }
}
