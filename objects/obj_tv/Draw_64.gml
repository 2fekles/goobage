
var collect_x = irandom_range((-collect_shake), collect_shake)
var collect_y = irandom_range((-collect_shake), collect_shake)
var tv_x = 833
var tv_y = 107
var _cx = ((tv_x - 215) + combo_posX)
var _cy = (((tv_y - 15) + hud_posY) + combo_posY)
var _perc = (global.combotime / 60)
var _minX = (_cx - 56)
var _maxX = (_cx + 59)
combofill_x = lerp(combofill_x, (_minX + ((_maxX - _minX) * _perc)), 0.5)
combofill_y = (_cy - 10)
draw_sprite(spr_tv_combobubblefill, combofill_index, combofill_x, combofill_y)
draw_sprite(spr_tv_combobubble, -1, _cx, _cy)
draw_set_font(combofont)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
var _tx = (_cx - 64)
var _ty = _cy
var _str = string(global.combo)
var num = string_length(_str)
for (var i = num; i > 0; i--)
{
    var char = string_char_at(_str, i)
    draw_text(_tx, _ty, char)
    _tx -= 22
    _ty -= 8
}
draw_sprite_ext(sprite_index, image_index, 833 , (107 + hud_posY), 1, 1, 1, c_white, 1)
    
draw_set_alpha(1)