/// @description SETTINGS

depth = -500
global.shellOpen = false

var shell = instance_create_depth(0, 0, depth, obj_shell)

// Input management
function openShell()
{
	global.shellOpen = false
}
function closeShell()
{
	global.shellOpen = true
}

// Shell appearance
shell.width = (window_get_width() - 10)
shell.screenAnchorPointV = "top"
shell.consolePaddingV = 6

// Keybind mapping
shell.openFunction = openShell
shell.closeFunction = closeShell

// Custom keys
shell.openKey = vk_f5
shell.openModifiers = noone