pal_swap_set(spr_palette, paletteselect, 0)
draw_sprite_ext(sprite_index, image_index, x, y, xscale* scale_xs, yscale* scale_ys, image_angle, image_blend, image_alpha)
shader_reset()
if flash
{
    shader_set(shd_hit)
    draw_sprite_ext(sprite_index, image_index, x, y, xscale* scale_xs, yscale* scale_ys, image_angle, image_blend, image_alpha)
    shader_reset()
}
