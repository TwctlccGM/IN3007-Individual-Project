/// @description

// Variables for GUI scaling
width = display_get_gui_width();
height = display_get_gui_height();
height_half = height / 2;
width_half = width / 2;

level_ended = false; // Trigger for saving data (in Step event)
flag_stop_duplicate_saving = 0; // Prevents saving data every frame, increases performance during level end cutscene

// Initialise variables
level_collectible_get = "Nope"; 
level_time = 0;
level_time_decimal = 0;
current_level = 0;
rank_points = 1000;
rank = "None";

/// LOAD STATS
// Player is in elevator room, not a level
if (room == rm_elevator)
{	
	// Load save file
	var _map = scr_load_json("savegame.sav");

    // Assign variables using data from save file
	level_collectible_get = ds_map_find_value(_map, "collectible");
	level_time = ds_map_find_value(_map, "time");
	current_level = ds_map_find_value(_map, "current level");
	
	// Assign variables for printing in elevator room
	print_collectible = string(level_collectible_get);
	print_time = string(level_time);
	print_level = string(current_level);
	
	// Ranking system based on time spent in level
	if (level_collectible_get == "Yep") { rank_points += 510 }; // Collectible gives rank points
	rank_points -= level_time * 10;							   // Level time reduces rank points
	
	if (rank_points >= 1000) { rank = "A"; }
	else if (rank_points < 1000 && rank_points >= 500) { rank = "B"; }
	else if (level_time < 500) { rank = "C"; }
}

// Player is in a level, not elevator room
if (room != rm_elevator)
{
	// Update current level based on current room
	switch(room)
	{
		case rm_level_1:
		{
			current_level = 1;
			break;
		}
		case rm_level_2:
		{
			current_level = 2;
			break;
		}
		case rm_level_3:
		{
			current_level = 3;
			break;
		}
		case rm_level_4:
		{
			current_level = 4;
			break;
		}
		case rm_level_5:
		{
			current_level = 5;
			break;
		}
		case rm_level_6:
		{
			current_level = 6;
			break;
		}
		case rm_level_boss:
		{
			current_level = 7;
			break;
		}
		case rm_level_end:
		{
			current_level = 8;
			break;
		}
	}
}