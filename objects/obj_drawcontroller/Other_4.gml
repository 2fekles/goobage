
    var roomname = room_get_name(room)
    roomname = string_letters(roomname)
    
    if ((roomname == "chateau" && room != chateau_1 && room != chateau_2) || room == dungeon_5 || room == dungeon_6)
    {
        kidsparty_lightning = 0
        dark_lightning = 1
    }
	else if roomname == "entrance"
	{
		kidsparty_lightning = 0
        dark_lightning = 1
		entrance_lighting = 1
	}
    else
    {
        kidsparty_lightning = 0
        dark_lightning = 0
		entrance_lighting = 0
    }











