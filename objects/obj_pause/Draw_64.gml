if pause
{
    var pad = 48
    draw_set_alpha(1)
    scr_draw_pause_image()
    draw_set_alpha(whiteal)
    draw_rectangle_color(0, 0, 960, 540, c_white, c_white, c_white, c_white, 0)
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
            rcx = ((xx - (string_width(pause_menu[i]) / 2)) - 60)
            rcy = yy
        }
        draw_text_color(xx, yy, pause_menu[i], c, c, c, c, alphat)
    }
    xx = 480
    yy = 404
    pad = 40
    for (i = 0; i < array_length(toppin_sprite); i++)
        draw_sprite_ext(toppin_sprite[i], toppin_index[i], (xx + (pad * i)), yy, 1, 1, 0, c_white, (toppin_has[i] ? 1 : 0.5))
}
draw_set_alpha(alphat)
draw_sprite(spr_cursor, cursor_index, cx, cy)
