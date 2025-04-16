/// @description

/// SAVE STATS
if (level_ended == true)
{
	global.pause_enabled = false;
	with (obj_chaseWall) { speed = 0; };
	with (obj_player) { player_paused = true; };
	
	if (flag_stop_duplicate_saving == 0)
	{
		// Create map to store data in	
		var _map = ds_map_create();
		// var _level = room_get_name(room); // This will be used for storing multiple level stats later
	
		// Add data from variables to map
		ds_map_add(_map, "collectible", level_collectible_get);
		ds_map_add(_map, "time", level_time);
		ds_map_add(_map, "current level", current_level);
		// AllGun modes unlocked (unused)
		//with (obj_AllGun)
		//{
		//	ds_map_add(_map, "shotgun unlocked?", unlocked_shotgun);
		//	ds_map_add(_map, "laser unlocked?", unlocked_laser);
		//	ds_map_add(_map, "rocket unlocked?", unlocked_rocket);
		//}
	
		// Save to string
		var _string = json_encode(_map);
		// This script saves the string to a save file
		scr_save_string("savegame.sav", _string);
	
		// Delete the map, its data has been saved so the map is no longer needed
		ds_map_destroy(_map);
		flag_stop_duplicate_saving = 1;
	}
}
else if (room != rm_elevator)
{ 
	// Increase the 'level_time' timer 
	// ONLY if the player is in a level (aka not in elevator) and the level has not ended
	level_time_decimal += 0.02; 
	level_time = floor(level_time_decimal); // Turns the level timer into a whole number
};
	
// Press Spacebar to go to next level
if (room == rm_elevator)
{
	switch(current_level)
	{
		case 1:
		{
			if keyboard_check_pressed(ord("R"))
			{ scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_1); }; // Retry level
			if keyboard_check_pressed(vk_space)
			{ 
				audio_play_sound(snd_next_level, 0, 0)
				scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_2);  // Go to next level
			};
			break;
		}
		case 2:
		{
			if keyboard_check_pressed(ord("R"))
			{ scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_2); }; // Retry level
			if keyboard_check_pressed(vk_space)
			{ 
				audio_play_sound(snd_next_level, 0, 0)
				scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_3);  // Go to next level
			};
			break;
		}
		case 3:
		{
			if keyboard_check_pressed(ord("R"))
			{ scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_3); }; // Retry level
			if keyboard_check_pressed(vk_space)
			{ 
				audio_play_sound(snd_next_level, 0, 0)
				scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_4);  // Go to next level
			};
			break;
		}
		case 4:
		{
			if keyboard_check_pressed(ord("R"))
			{ scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_4); }; // Retry level
			if keyboard_check_pressed(vk_space)
			{ 
				audio_play_sound(snd_next_level, 0, 0)
				scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_5);  // Go to next level
			};
			break;
		}
		case 5:
		{
			if keyboard_check_pressed(ord("R"))
			{ scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_5); }; // Retry level
			if keyboard_check_pressed(vk_space)
			{ 
				audio_play_sound(snd_next_level, 0, 0)
				scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_6);  // Go to next level
			};
			break;
		}
		case 6:
		{
			if keyboard_check_pressed(ord("R"))
			{ scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_6); }; // Retry level
			if keyboard_check_pressed(vk_space)
			{ 
				audio_play_sound(snd_next_level, 0, 0)
				scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_boss);  // Go to next level
			};
			break;
		}
		case 7:
		{
			if keyboard_check_pressed(ord("R"))
			{ scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_boss); }; // Retry level
			if keyboard_check_pressed(vk_space)
			{ 
				audio_play_sound(snd_next_level, 0, 0)
				scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_end);  // Go to next level
			};
			break;
		}
	}
}



