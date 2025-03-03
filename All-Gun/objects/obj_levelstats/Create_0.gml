/// @description
level_ended = false;

level_collectible_get = 0;
level_time = 0;
level_time_decimal = 0;


if (room = room_elevator)
{
	//if (file_exists("savegame.sav"))
	//{
		var _map = scr_load_json("savegame.sav");
		//var _list = _wrapper[? "ROOT"];
		
		var _collectible = ds_map_find_value(_map, "collectible");
		var _time = ds_map_find_value(_map, "time");
	
		level_collectible_get = _collectible;
		level_time = _time;
	//}

	print_collectible = string(level_collectible_get);
	print_time = string(level_time);
}


