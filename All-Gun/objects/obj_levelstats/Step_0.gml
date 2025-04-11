/// @description

/// SAVE STATS
if (level_ended == true)
{
	global.pause_enabled = false;
	with (obj_chaseWall) { speed = 0; };
	with (obj_player) { player_paused = true; };
	
	// Create map to store data in	
	var _map = ds_map_create();
	// var _level = room_get_name(room); // This will be used for storing multiple level stats later
	
	// Add data from variables to map
	ds_map_add(_map, "collectible", level_collectible_get);
	ds_map_add(_map, "time", level_time);
	ds_map_add(_map, "current level", current_level);
	// AllGun modes unlocked
	with (obj_AllGun)
	{
		ds_map_add(_map, "shotgun unlocked?", unlocked_shotgun);
		ds_map_add(_map, "laser unlocked?", unlocked_laser);
		ds_map_add(_map, "rocket unlocked?", unlocked_rocket);
	}
	
	// Save to string
	var _string = json_encode(_map);
	// This script saves the string to a save file
	scr_save_string("savegame.sav", _string);
	
	// Delete the map, its data has been saved so the map is no longer needed
	ds_map_destroy(_map);
}
else if (room != rm_elevator)
{ 
	// Increase the 'level_time' timer 
	// ONLY if the player is in a level (aka not in elevator) and the level has not ended
	level_time_decimal += 0.02; 
	level_time = floor(level_time_decimal); // Turns the level timer into a whole number
};
	
// Press Spacebar to go to next level
if (room == rm_elevator) && (keyboard_check_pressed(vk_space))
{
	switch(current_level)
	{
		case 1:
		{
			global.pause_enabled = false;
			scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_2);
			break;
		}
		case 2:
		{
			global.pause_enabled = false;
			scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_3);
			break;
		}
		case 3:
		{
			global.pause_enabled = false;
			scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_4);
			break;
		}
		case 4:
		{
			global.pause_enabled = false;
			scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_5);
			break;
		}
		case 5:
		{
			global.pause_enabled = false;
			scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_6);
			break;
		}
		case 6:
		{
			global.pause_enabled = false;
			scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_boss);
			break;
		}
		case 7:
		{
			global.pause_enabled = false;
			scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_end);
			break;
		}
	}
}



