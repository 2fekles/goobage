if full
    gpu_set_fog(true, image_blend, 0, 0)
pal_swap_set(spr_palette, paletteselect, 0)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
gpu_set_fog(false, image_blend, 0, 0)





