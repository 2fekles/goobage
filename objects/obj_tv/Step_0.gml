switch state
{
	case (0 << 0):
	idlespr = spr_tv_idle
	if obj_player1.state = 89
			tv_do_expression(spr_tv_exprmach3)
switch sprite_index
        {
            case spr_tv_off:
                if visible
                {
                    sprite_index = spr_tv_open
                    image_index = 0
                }
                break
            case spr_tv_open:
                if (floor(image_index) == (image_number - 1))
				{
					
                    sprite_index = idlespr
				}
                break
            case spr_tv_idle:
            
                if (idleanim > 0)
                    idleanim--
                if (sprite_index != idlespr)
                    sprite_index = idlespr
                if (idleanim <= 0 && floor(image_index) == (image_number - 1))
                {
                    sprite_index = choose(spr_tv_idleanim1, spr_tv_idleanim2)
                    
                    image_index = 0
                }
                break
				case spr_tv_idleanim1:
            case spr_tv_idleanim2:
            
                if (floor(image_index) == (image_number - 1))
                {
                    sprite_index = idlespr
                    idleanim = (240 + (60 * irandom_range(-1, 2)))
                }
                if (idlespr != spr_tv_idle)
                    sprite_index = idlespr
                break
            
		}
		
		break
			case (250 << 0):
            sprite_index = spr_tv_whitenoise
            if (noisebuffer > 0)
                noisebuffer--
            else
            {
                noisebuffer = noisemax
                if (expressionsprite != -4)
                {
                    state = (251 << 0)
                    sprite_index = expressionsprite
                }
                else
				{
                    state = (0 << 0)
					sprite_index = spr_tv_idle
                image_index = 0
				}
            }
			break
			case (251 << 0):
			
				switch expressionsprite
            {
			case spr_tv_exprmach3:
                    
                        if obj_player1.state != 89 || (obj_player1.state = 70 && sprite_index != spr_player_machslideboost3)
                        {
                            state = (250 << 0)
                            expressionsprite = -4
                        }
                    
                    break
			}
			break
			
		}
if (room == rank_room || room == timesuproom || room == boss_room1 || room == Realtitlescreen)
    alpha = 0
if (room == entrance_1)
{
    global.srank = 5750
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == medieval_1 && global.snickchallenge == 0)
{
    global.srank = 11000
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == medieval_1 && global.snickchallenge == 1)
{
    global.srank = 8300
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == ruin_1 && global.snickchallenge == 0)
{
    global.srank = 11600
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
if (room == dungeon_1 && global.snickchallenge == 0)
{
    global.srank = 10400
    global.arank = (global.srank - (global.srank / 4))
    global.brank = (global.srank - ((global.srank / 4) * 2))
    global.crank = (global.srank - ((global.srank / 4) * 3))
}
image_speed = 0.35
if (showtext == 1)
{
    xi = (500 + random_range(1, -1))
    if (yi > 500)
        yi -= 5
}
if (showtext == 0)
{
    xi = (500 + random_range(1, -1))
    if (yi < 600)
        yi += 1
}
if (!((obj_player.state == 23 && obj_player.state == 24 && obj_player.state == 17)))
    once = 0
if (obj_player.y < 200 && obj_player.x > (room_width - 200))
    alpha = 0.5
else if (!((room == rank_room || room == timesuproom || room == boss_room1 || room == Realtitlescreen)))
    alpha = 1
	if (global.combotime > 0 && global.combo > 0)
    visualcombo = global.combo
if global.combo != 0
{
	comboalpha = Approach(comboalpha,1,0.1)
}
else
comboalpha = Approach(comboalpha,0,0.015)