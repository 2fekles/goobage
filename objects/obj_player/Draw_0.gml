pal_swap_set(spr_palette, paletteselect, 0)
draw_sprite_ext(sprite_index, image_index, x, y, xscale* scale_xs, yscale* scale_ys, image_angle, image_blend, image_alpha)
shader_reset()
if flash
{
    shader_set(shd_hit)
    draw_sprite_ext(sprite_index, image_index, x, y, xscale* scale_xs, yscale* scale_ys, image_angle, image_blend, image_alpha)
    shader_reset()
}
/* 
draw_set_valign(fa_center)
draw_set_color(c_white)
draw_set_halign(fa_middle)
draw_set_font(font0)
draw_text(x, y - sprite_height,"state: " + string(state))
draw_text(x, y - sprite_height - 24, sprite_get_name(sprite_index))
draw_text(x, y - sprite_height - 24 * 2, "mvsp: " + string(movespeed))
draw_text(x, y - sprite_height - 24 * 3, "vsp: " + string(vsp))
draw_text(x, y - sprite_height - 24 * 4, room_get_name(room))
*/
