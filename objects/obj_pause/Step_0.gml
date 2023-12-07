switch state
{
	case states.pause:
	scr_pause_normal()
	break
	case states.options:
	scr_pause_options()
	break
	case states.video:
	break
}
screenx2 = lerp(screenx2,screenx,0.15)
cx = lerp(cx, rcx, 0.1)
cy = lerp(cy, rcy, 0.15)
cursor_index += 0.35
