if (defused == 1)
    countdown -= 0.5
if (countdown < 50)
    sprite_index = bomblit_spr
if (countdown == 0 || (elite && grounded))
    instance_destroy()
if (kickbuffer > 0)
{
    if (!(place_meeting(x, y, obj_player)))
        kickbuffer = 0
}
switch state
{
    case (0 << 0):
        hsp = (movespeed * image_xscale)
        if (place_meeting((x + hsp), y, obj_solid) && (!(place_meeting((x + hsp), y, obj_ratblock))))
            image_xscale *= -1
        if (place_meeting((x + hsp), y, obj_ratblock) || place_meeting(x, (y + vsp), obj_ratblock))
            instance_destroy()
        if (scr_solid((x + 1), y) || scr_solid((x - 1), y))
            drop = 1
        if grounded
        {
            if (movespeed > 0)
                movespeed -= 0.5
        }

        if (vsp < 12)
            vsp += grav
        scr_collide()
        break
    case (4 << 0):
        break
    default:
        state = (0 << 0)
        break
}

