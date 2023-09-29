if time < 1000
{
create_collect(x, y, choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect))
scr_soundeffect_pitched(sfx_collecttopping,irandom_range(9,12) / 10)
time++

alarm[1] = 3
}



