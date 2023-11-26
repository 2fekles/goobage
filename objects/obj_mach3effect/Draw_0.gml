
if full != 1
pal_swap_set(spr_palette, paletteselect, 0)
if full == 1
gpu_set_fog(true, image_blend, 0, 0)
if full == 0
{
	shader_set(shd_coloredline)
                shader_set_uniform_f(shd_black, 0, 0, 0, 255)
                shader_set_uniform_f(shd_brown, color_get_red(image_blend), color_get_green(image_blend), color_get_blue(image_blend), 255)
                shader_set_uniform_f(shd_alpha, image_alpha)
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
	shader_reset()
}
else
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    gpu_set_fog(false, c_white, 0, 0)





