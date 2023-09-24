var hud_xx = (149 + irandom_range((-collect_shake), collect_shake))
    var hud_yy = ((105 + irandom_range((-collect_shake), collect_shake)) + hud_posY)
	pizzascore_index += 0.25
    var _numfont = font_add_sprite_ext(spr_font_collect, "0123456789", 1, 0)
    draw_sprite_ext(spr_pizzascore, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha)
    var _score = global.collect
    
    if (_score >= global.crank)
        draw_sprite_ext(spr_pizzascore_pepper, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha)
    if (_score >= global.brank)
        draw_sprite_ext(spr_pizzascore_pepperoni, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha)
    if (_score >= global.arank)
        draw_sprite_ext(spr_pizzascore_olive, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha)
    if (_score >= global.srank)
        draw_sprite_ext(spr_pizzascore_shroom, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha)
    draw_set_valign(fa_top)
    draw_set_halign(fa_left)
    draw_set_font(_numfont)
    var text_y = 0
    switch floor(pizzascore_index)
    {
        case 1:
        case 2:
        case 3:
            text_y = 1
            break
        case 5:
        case 10:
            text_y = -1
            break
        case 6:
        case 9:
            text_y = -2
            break
        case 7:
            text_y = -3
            break
        case 8:
            text_y = -5
            break
    }

    var str = string(_score)
    var num = string_length(str)
    var w = string_width(str)
    var xx = (hud_xx - (w / 2))
    if (lastcollect != _score)
    {
        color_array = array_create(num, 0)
        for (var i = 0; i < array_length(color_array); i++)
            color_array[i] = choose(irandom(3))
        lastcollect = _score
    }
    shader_set(global.Pal_Shader)
    draw_set_alpha(1)
    for (i = 0; i < num; i++)
    {
        var yy = (((i + 1) % 2) == 0 ? -5 : 0)
        var c = color_array[i]
        pal_swap_set(spr_font_palette, c, 0)
        draw_text(xx, (((hud_yy - 56) + text_y) + yy), string_char_at(str, (i + 1)))
        xx += (w / num)
    }
    draw_set_alpha(1)
    shader_reset()
    font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
    draw_set_font(font)
    draw_set_halign(fa_center)
    draw_set_color(c_white)
    if (global.panic == 1 || global.snickchallenge == 1)
    {
        if (global.seconds < 10)
        {
            if (global.minutes < 1)
                draw_set_color(c_red)
            else
                draw_set_color(c_white)
            draw_text((random_range(1, -1) + 480), (random_range(1, -1) + 65), string_hash_to_newline(((string(global.minutes) + ":0") + string(global.seconds))))
        }
        else if (global.seconds >= 10)
        {
            if (global.minutes < 1)
                draw_set_color(c_red)
            else
                draw_set_color(c_white)
            draw_text((random_range(1, -1) + 480), (random_range(1, -1) + 65), string_hash_to_newline(((string(global.minutes) + ":") + string(global.seconds))))
        }
    }
    if (global.key_inv == 1)
        draw_sprite_ext(spr_key, -1, 50, 30, 1, 1, 1, c_white, alpha)
    draw_sprite_ext(spr_inv, -1, 50, 30, 1, 1, 1, c_white, alpha)

draw_set_blend_mode(bm_normal)
