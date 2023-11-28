drawing = place_meeting(x, y, obj_player)
image_index = 0
scr_hub_bg_step()
if ((!pizza) && highscore > 0 && bbox_in_camera(view_camera[0], 0) && distance_to_object(obj_player) < 150)
{
    pizza = 1
    with (instance_create(x, (y - 960), obj_startgate_pizza))
    {
        y_to = (other.y - 125)
        highscore = []
        highscorepos = 0
        var s = string(other.highscore)
        for (var i = 1; i <= string_length(s); i++)
        {
            var c = string_char_at(s, i)
            array_push(highscore, [c, 0, 0])
        }
        
                rank_index = 0
                sprite_index = spr_pizzascore
                break
        

    }
}
if (!drawing)
{
    var dis = 250
    bgalpha = (distance_to_object(obj_player) / dis)
    bgalpha -= 0.25
    if (bgalpha > 1)
        bgalpha = 1
    if (bgalpha < 0)
        bgalpha = 0
}
else
    bgalpha = Approach(bgalpha, 0, 0.1)
