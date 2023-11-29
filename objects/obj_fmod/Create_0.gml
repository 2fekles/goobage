fmod_create()
fmod_init(256)
var banks = 
[
"sound/Desktop/Master.strings.bank", 
"sound/Desktop/Master.bank", 
"sound/Desktop/music.bank",
"sound/Desktop/sfx.bank"
]

for (var i = 0; i < array_length(banks); i++) {
	var b = (working_directory + banks[i]);
	var load_bank = fmod_loadBank(b);
	show_debug_message(string(banks[i]) + " :  "  + string(load_bank));
}

z = 0;
show_debug_message($"Listener Status: {fmod_listener_setPosition(0, x, y, z)}; Position: {x}, {y}, {z}");