vsp = random_range(-10, -18)
hsp = (sign((x - obj_player.x)) * random_range(10, 18))
grav = 0.4
alarm[0] = 5
cigar = 0
stomped = 0
if (x != obj_player.x)
    image_xscale = (-(sign((x - obj_player.x))))
