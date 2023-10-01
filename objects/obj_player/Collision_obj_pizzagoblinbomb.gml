if (cutscene == 0 && other.grounded == 1 && state != 26 && (state == 21 || character == "S"))
{
    state = -2
            image_index = 0
            sprite_index = spr_player_haulingstart
            other.defused = 1
            bombgrabID = other.id
            movespeed = 6
            with (other)
            {
                state = (4 << 0)
                playerid = other.id
            }
}
if (hurted == 0 && other.grounded == 0)
{
    instance_destroy(other.id)
    instance_create(x, y, obj_bombexplosion)
}
