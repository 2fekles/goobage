pause = 0
var i = 0
color = make_color_rgb(121, 103, 151)
selected = 0
stickpressed = 0
image_speed = 0
depth = -998
screensprite = -4
screensize = 0
guisprite = -4
pause_menu = ["RESUME", "OPTIONS", "RESTART LEVEL", "EXIT LEVEL"]
cursor_index = 0
cursor_sprite_number = sprite_get_number(spr_cursor)
cursor_sprite_height = sprite_get_height(spr_cursor)
peppino_index = 0
toppin_sprite[0] = spr_pizzakincheese
toppin_sprite[1] = spr_pizzakinpineapple
toppin_sprite[2] = spr_pizzakinsausage
toppin_sprite[3] = spr_pizzakinshroom
cx = 0
cy = 0
whiteal = 0
alphat = 1
xoffsett = 0
rcx = -100
rcy = -100
toppin_sprite[4] = spr_pizzakintomato
for (i = 0; i < array_length(toppin_sprite); i++)
{
    toppin_number[i] = sprite_get_number(toppin_sprite[i])
    toppin_index[i] = 0
    toppin_has[i] = 0
}
function scr_create_pause_image() //gml_Script_scr_create_pause_image
{
    draw_set_alpha(1)
    screensprite = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false, false, 0, 0)
    screenscale = min((960 / surface_get_width(application_surface)), (540 / surface_get_height(application_surface)))
}

function scr_draw_pause_image() //gml_Script_scr_draw_pause_image
{
    draw_rectangle_color(0, 0, 960, 540, c_black, c_black, c_black, c_black, 0)
    draw_sprite_ext(screensprite, 0, 0, 0, screenscale, screenscale, 0, c_white, 1)
}

function scr_delete_pause_image() //gml_Script_scr_delete_pause_image
{
    if sprite_exists(screensprite)
        sprite_delete(screensprite)
    if sprite_exists(guisprite)
        sprite_delete(guisprite)
}
