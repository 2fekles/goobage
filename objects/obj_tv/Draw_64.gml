
var collect_x = irandom_range((-collect_shake), collect_shake)
var collect_y = irandom_range((-collect_shake), collect_shake)
var _cx = (833 + combo_posX)
var _cy = (((107 + 117) + hud_posY) + combo_posY)
var _perc = (global.combotime / 60)
draw_sprite_ext(sprite_index, image_index, 833 , (107 + hud_posY), 1, 1, 1, c_white, 1)
draw_set_alpha(comboalpha)
draw_sprite_ext(spr_tv_comboblack, image_index, 833 , (107 + hud_posY), 1, 1, 1, c_white, comboalpha)
    draw_sprite_ext(spr_tv_combo, image_index, 833, (107 + hud_posY), 1, 1, 0, c_white, comboalpha)
    var str = string(global.combo)
    if (global.combo < 10)
        str = concat("0", str)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    draw_set_font(global.combofont)
    var num = string_length(str)
    var w = (string_width(str) / num)
    var xx = 0
    var yy = 0
    for (var i = 0; i < num; i++)
    {
        var char = string_char_at(str, (i + 1))
        xx = (i * w)
        yy = (i * 5)
        draw_text(833 + xx, 107 + hud_posY - yy + hud_posY, char)
    }
draw_set_alpha(1)