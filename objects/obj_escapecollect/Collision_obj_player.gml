
if audio_is_playing(sfx_escapecollect)
    audio_stop_sound(sfx_escapecollect)

scr_soundeffect_pitched(sfx_escapecollect,irandom_range(9,12) / 10)
global.collect += 10
with (instance_create((x + 16), y, obj_smallnumber))
    number = "10"
instance_destroy()





