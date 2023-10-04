if global.panic
{
if audio_is_playing(sfx_escapecollect)
    audio_stop_sound(sfx_escapecollect)
global.combotime += 5
global.combotime = clamp(global.combotime,0,60)
scr_soundeffect_pitched(sfx_escapecollect,irandom_range(9,12) / 10)
global.collect += 10
with (instance_create((x + 16), y, obj_smallnumber))
    number = "10"
	create_collect(x, y, sprite_index)
instance_destroy()
}





