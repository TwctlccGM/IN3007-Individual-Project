/// @description
level_ended = false;

level_collectible_get = 0;
level_time = 0;
level_time_decimal = 0;
current_level = 0;

// Load stats
if (room == room_elevator)
{
	var _map = scr_load_json("savegame.sav");
	
	level_collectible_get = ds_map_find_value(_map, "collectible");
	level_time = ds_map_find_value(_map, "time");
	current_level = ds_map_find_value(_map, "current level");

	print_collectible = string(level_collectible_get);
	print_time = string(level_time);
	print_level = string(current_level);
}

if (room != room_elevator)
{
	switch(room)
	{
		case room_test:
		{
			current_level = 1;
			break;
		}
		case room_test2:
		{
			current_level = 2;
			break;
		}
		case room_test3:
		{
			current_level = 3;
			break;
		}
		case room_test4:
		{
			current_level = 4;
			break;
		}
	}
}