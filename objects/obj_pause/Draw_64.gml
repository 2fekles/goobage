if pause
{
	if !surface_exists(pausesurf)
	pausesurf = surface_create(960,540)
	if !surface_exists(optionsurf)
	optionsurf = surface_create(960,540)
	if !surface_exists(videosurf)
	videosurf = surface_create(960,540)
	surface_set_target(pausesurf)
    var pad = 48
    draw_set_alpha(1)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    var xx = 480
    var yy = 270
    for (var i = 0; i < array_length(pause_menu); i++)
    {
        var c = c_gray
        yy = (200 + (pad * i))
        if (selected == i)
        {
            c = c_white
			if state = states.pause
			{
            rcx = ((xx - (string_width(pause_menu[i]) / 2)) - 60)
            rcy = yy
			}
        }
        draw_text_color(xx, yy, pause_menu[i], c, c, c, c, alphat)
    }
    xx = 480
    yy = 404
    pad = 40
		surface_reset_target()
		surface_set_target(optionsurf)
var pad = 48
    draw_set_alpha(1)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    var xx = 480
    var yy = 270
    for (var i = 0; i < array_length(option_menu); i++)
    {
        var c = c_gray
        yy = (200 + (pad * i))
        if (selected == i)
        {
            c = c_white
			if state = states.options
			{
            rcx = ((xx - (string_width(option_menu[i]) / 2)) - 60)
            rcy = yy
			}
        }
        draw_text_color(xx, yy, option_menu[i], c, c, c, c, alphat)
    }
    xx = 480
    yy = 404
    pad = 40
surface_reset_target()
surface_set_target(videosurf)
var pad = 48
    draw_set_alpha(1)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    var xx = 480 - 120
    var yy = 270
    for (var i = 0; i < array_length(video); i++)
    {
        var c = c_gray
        yy = (200 + (pad * i))
        if (selected == i)
        {
            c = c_white
			if state = states.video
			{
            rcx = ((xx - (string_width(video[i]) / 2)) - 60)
            rcy = yy
			}
        }
        draw_text_color(xx, yy, video[i], c, c, c, c, alphat)
		draw_text_color(xx + 320, yy, "MO", c, c, c, c, alphat)
    }
surface_reset_target() // im doing pause menu stuff hihi
		draw_set_alpha(1)
    
		scr_draw_pause_image()
		draw_set_alpha(whiteal)
		draw_rectangle_color(0, 0, 960, 540, c_black, c_black, c_black, c_black, 0)
		draw_set_alpha(1)
		draw_surface(pausesurf,0 - screenx2, 0)
		draw_surface(optionsurf,0 - screenx2 + 960, 0)
		draw_surface(videosurf,0 - screenx2 + 960 * 2, 0)
}
draw_set_alpha(alphat)
draw_sprite(spr_cursor, cursor_index, cx, cy)
