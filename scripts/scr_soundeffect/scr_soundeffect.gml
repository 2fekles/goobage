function scr_soundeffect()
{
	var snd = argument[irandom((argument_count - 1))]
	audio_play_sound(snd, 1, false)
}

function scr_soundeffect_pitched(argument0,argument1)
{
	var snd = argument0
	var _pitch = audio_play_sound(snd, 1, false)
	audio_sound_pitch(_pitch, argument1)
}
