image_speed = 0
image_index = (obj_player.image_index - 1)
alarm[0] = 15
image_xscale = obj_player.xscale
sprite_index = obj_player.sprite_index
randomize()
image_blend = choose(make_color_rgb(255, 0, 0), make_color_rgb(0, 255, 0))
alarm[1] = 3
blue = 0
spr_palette = 0
paletteselect = 0
spd = 0.05
full = 0
shd_black = shader_get_uniform(shd_coloredline, "color1")
shd_brown = shader_get_uniform(shd_coloredline, "color2")
shd_alpha = shader_get_uniform(shd_coloredline, "alpha")