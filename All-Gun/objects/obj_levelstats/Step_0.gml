/// @description

// Save stats
if (level_ended == true)
{
	var _root_list = ds_list_create();	
	var _map = ds_map_create();
	//ds_list_add(_root_list, _map);
	//ds_list_mark_as_map(_root_list, ds_list_size(_root_list) - 1);
	
	// var _level = room_get_name(room); // This will be used for storing multiple level stats later
	ds_map_add(_map, "collectible", level_collectible_get);
	ds_map_add(_map, "time", level_time);
	ds_map_add(_map, "current level", current_level);
	
	// Wrap root list in a map
	//var _wrapper = ds_map_create();
	//ds_map_add_list(_wrapper, "ROOT", _root_list);
	
	// Save to string
	var _string = json_encode(_map);
	scr_save_string("savegame.sav", _string);
	
	ds_map_destroy(_map);
}
else if (room != room_elevator)
{ 
	level_time_decimal += 0.02;
	level_time = floor(level_time_decimal); 
};
	

if (room == room_elevator) && (keyboard_check_pressed(vk_space))
{
	switch(current_level)
	{
		case 1:
		{
			scr_slide_transition(TRANSITION_MODE.GOTO, room_test2);
			break;
		}
		case 2:
		{
			scr_slide_transition(TRANSITION_MODE.GOTO, room_test3);
			break;
		}
		case 3:
		{
			scr_slide_transition(TRANSITION_MODE.GOTO, room_test4);
			break;
		}
		case 4:
		{
			scr_slide_transition(TRANSITION_MODE.GOTO, room_test);
			break;
		}
	}
}



