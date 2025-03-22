/// @description
width = display_get_gui_width();
height = display_get_gui_height();
height_half = height / 2;
width_half = width / 2;


level_ended = false;

level_collectible_get = 0;
level_time = 0;
level_time_decimal = 0;
current_level = 0;
rank = "None";

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
	
	if (level_time <= 10) { rank = "A"; }
	else if (level_time > 10 && level_time <= 30) { rank = "B"; }
	else if (level_time > 30) { rank = "C"; }
}

if (room != room_elevator)
{
	switch(room)
	{
		case room_level_1:
		{
			current_level = 1;
			break;
		}
		case room_level_2:
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