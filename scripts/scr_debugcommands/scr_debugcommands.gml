/// @description COMMANDS

// Hide Tiles
function sh_hidetiles(args) {
	if is_undefined(args[1])
		global.hidetiles = (!global.hidetiles)
	else
		global.hidetiles = args[1]
	layer_set_visible("Tiles_BG", (!global.hidetiles))
	layer_set_visible("Tiles_BG2", (!global.hidetiles))
	layer_set_visible("Tiles_BG3", (!global.hidetiles))
	layer_set_visible("Tiles_1", (!global.hidetiles))
	layer_set_visible("Tiles_2", (!global.hidetiles))
	layer_set_visible("Tiles_3", (!global.hidetiles))
	layer_set_visible("Tiles_4", (!global.hidetiles))
	layer_set_visible("Tiles_Foreground1", (!global.hidetiles))
	layer_set_visible("Tiles_Foreground2", (!global.hidetiles))
	layer_set_visible("Tiles_Foreground3", (!global.hidetiles))
}
function meta_hidetiles() {
	return {
		description: "Toggle tile visibility",
		arguments: ["<bool>"],
	}
}

// Noclip
function sh_noclip() {
	
}
function meta_noclip() {
	return {
		description: "Lets you fly through walls",
		arguments: [""],
	}
}

// Set Combo
function sh_setcombo(args) {
	if is_undefined(args[1])
		exit
	if is_undefined(args[2])
		args[2] = 60
	global.combo = real(args[1])
	global.combotime = real(args[2])
}
function meta_setcombo() {
	return {
		description: "Sets the combo",
		arguments: ["<combo>", "<combotime:optional>"],
	}
}

// All Toppins
function sh_alltoppins() {
	if !instance_exists(obj_pizzakincheese)
		instance_create(obj_player1.x, obj_player1.y, obj_pizzakincheese)
	if !instance_exists(obj_pizzakintomato)
		instance_create(obj_player1.x, obj_player1.y, obj_pizzakintomato)
	if !instance_exists(obj_pizzakinsausage)
		instance_create(obj_player1.x, obj_player1.y, obj_pizzakinsausage)
	if !instance_exists(obj_pizzakinpineapple)
		instance_create(obj_player1.x, obj_player1.y, obj_pizzakinpineapple)
	if !instance_exists(obj_pizzakinshroom)
		instance_create(obj_player1.x, obj_player1.y, obj_pizzakinshroom)
	global.cheesefollow = 1
	global.tomatofollow = 1
	global.sausagefollow = 1
	global.pineapplefollow = 1
	global.shroomfollow = 1
}
function meta_alltoppins() {
	return {
		description: "Adds all the toppins",
		arguments: [""],
	}
}

// Panic
function sh_panic() {
	global.panic = !global.panic
	if global.panic
		obj_camera.alarm[1] = 60
}
function meta_panic() {
	return {
		description: "Toggles pizza time",
		arguments: ["<bool>"],
	}
}

// Show Collisions
function sh_showcollisions(args) {
	if is_undefined(args[1]) || is_string(args[1])
		args[1] = !global.showcollisions
	global.showcollisions = args[1]
	event_perform(ev_other, ev_room_start)
}
function meta_showcollisions() {
	return {
		description: "Shows the collisions",
		arguments: ["<bool>"],
	}
}

// Room Goto
function sh_player_room(args) {
	if is_undefined(args[1]) 
		exit
	if is_undefined(args[2])
		exit
	args[1] = asset_get_index(args[1])
	if (args[1] == -1)
		return
	with (obj_player)
	{
		targetRoom = args[1]
		targetDoor = args[2]
	}
	instance_create(x, y, obj_fadeout)
}
function meta_player_room() {
	return {
		description: "Go to a given room",
		suggestions: ["N/A",["N/A", "A", "B", "C", "D", "E"]],
		arguments: ["<targetRoom>", "<targetDoor>"],
	}
}

// Set State
function sh_player_set_state(args) {
	if is_undefined(args[1]) 
		exit
	with obj_player{
		state = args[1]
	}
}
function meta_player_set_state() {
	return {
		description: "Changes the player state",
		suggestions: ["states.normal"],
		arguments: ["<state>"],
	}
}

