if (hurted == 0 && cutscene == 0 && state != 26 && sprite_index != spr_bombpep_end && state != 62 && state != 64)
{
    if (state == 23 || state == 24)
    {
        scr_soundeffect(sfx_loseknight)
        with (instance_create(x, y, obj_knightdebris))
            image_index = 0
        with (instance_create(x, y, obj_knightdebris))
            image_index = 1
        with (instance_create(x, y, obj_knightdebris))
            image_index = 2
        with (instance_create(x, y, obj_knightdebris))
            image_index = 3
        with (instance_create(x, y, obj_knightdebris))
            image_index = 4
        with (instance_create(x, y, obj_knightdebris))
            image_index = 5
        if (x != other.x)
            obj_player.hsp = (sign((x - other.x)) * 5)
    }
    hurt_player(self)
}
