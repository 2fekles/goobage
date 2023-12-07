
if (kidsparty_lightning || dark_lightning)
{
    var cw = (camera_get_view_width(view_camera[0]) + 32)
    var ch = (camera_get_view_height(view_camera[0]) + 32)
    if (!surface_exists(surf))
        surf = surface_create(cw, ch)
    
    if (kidsparty_lightning && (!surface_exists(surf2)))
        surf2 = surface_create(cw, ch)
    var surf_x = camera_get_view_x(view_camera[0])
    var surf_y = camera_get_view_y(view_camera[0])
    if kidsparty_lightning
    {
        if surface_exists(surf)
        {
            surface_set_target(surf)
            draw_clear_alpha(c_black, 0)
            draw_set_color(c_black)
            draw_set_alpha(1)
            draw_rectangle(0, 0, cw, ch, false)
            gpu_set_blendmode(bm_subtract)
            draw_set_color(c_white)
            
            gpu_set_blendmode(bm_normal)
            draw_set_alpha(1)
            surface_reset_target()
        }
        if surface_exists(surf2)
        {
            surface_set_target(surf2)
            draw_clear_alpha(c_black, 0)
            draw_set_color(c_black)
            draw_set_alpha(1)
            draw_rectangle(0, 0, cw, ch, false)
            gpu_set_blendmode(bm_subtract)
            draw_set_color(c_white)
            
            gpu_set_blendmode(bm_normal)
            draw_surface(surf, 0, 0)
            gpu_set_blendmode(bm_add)
            draw_set_alpha(0.3)
            
            surface_reset_target()
            gpu_set_blendmode(bm_normal)
            draw_set_alpha(bg_alpha)
            draw_surface(surf2, surf_x, surf_y)
            draw_set_alpha(1)
        }
    }
    else if dark_lightning || entrance_lighting
    {
        if surface_exists(surf)
        {
            surface_set_target(surf)
            draw_clear_alpha(c_black, 0)
            draw_set_color(c_black)
            draw_set_alpha(0.8)
            draw_rectangle(0, 0, cw, ch, false)
            gpu_set_blendmode(bm_subtract)
            draw_set_color(c_white)
            for (var i = 0; i < 2; i++)
            {
                draw_set_alpha(circle_alpha_out)
                with (obj_player)
                {
                    if (state != (186 << 0))
                        draw_circle(((x - surf_x) + irandom_range(-1, 1)), ((y - surf_y) + irandom_range(-1, 1)), 298, 0)
                }
                draw_set_alpha(circle_alpha_in)
                with (obj_player)
                {
                    if (state != (186 << 0))
                        draw_circle(((x - surf_x) + irandom_range(-1, 1)), ((y - surf_y) + irandom_range(-1, 1)), 258, 0)
                }
				
            }
            gpu_set_blendmode(bm_normal)
            draw_set_alpha(1)
            surface_reset_target()
			draw_surface(surf, surf_x, surf_y)
        }
    }
}







