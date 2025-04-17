/// @description

/// HUD
// Assign variables for printing in the middle of a level (aka they update frequently)
print_collectible = string(level_collectible_get);
print_time = string(level_time);
print_level = string(current_level);
print_deaths = string(death_counter);

if (room != rm_level_end && room != rm_elevator)
{
	// Top black bar to make text easier to read
	draw_set_font(fnt_cutscene);
	draw_set_color(c_white);
	draw_sprite_ext(spr_blackbar, 0, 0, 0, 1280, 1.3, 0, c_black, 1);

	// Print the variables
	//draw_text(width_half * 0.1, 10, "Collectible: ");	// Collectible obtained
	//draw_text(width_half * 0.3, 10, print_collectible);
	draw_text(width * 0.85, height * 0.025, "Deaths: ");	// Time taken
	draw_text(width * 0.9, height * 0.025, print_deaths);
	draw_text(width * 0.15, height * 0.025, "Level: ");		// Current level
	draw_text(width * 0.2, height * 0.025, print_level);

	/// AllGun Modes HUD
	if (instance_exists(obj_AllGun))
	{
		with (obj_AllGun)
		{
			// Draw Rifle + Shotgun + Laser + Rocket HUD
			if (unlocked_rocket == true)
			{
				draw_set_font(fnt_cutscene);
				draw_set_color(c_white);
				draw_text(width_half * 0.9, height * 0.042, "1");
				draw_sprite(spr_AllGun_rifle, 0, width_half * 0.9, height * 0.025)
				
				draw_set_font(fnt_cutscene);
				draw_set_color(c_white);
				draw_text(width_half * 0.95, height * 0.042, "2");
				draw_sprite(spr_AllGun_shotgun, 0, width_half * 0.95, height * 0.025)
				
				draw_set_font(fnt_cutscene);
				draw_set_color(c_white);
				draw_text(width_half * 1.0, height * 0.042, "3");
				draw_sprite(spr_AllGun_laser, 0, width_half * 1.0, height * 0.025)
				
				draw_set_font(fnt_cutscene);
				draw_set_color(c_white);
				draw_text(width_half * 1.05, height * 0.042, "4");
				draw_sprite(spr_AllGun_rocket, 0, width_half * 1.05, height * 0.025)
			}
			// Draw Rifle + Shotgun + Laser HUD
			else if (unlocked_laser == true)
			{
				draw_set_font(fnt_cutscene);
				draw_set_color(c_white);
				draw_text(width_half * 0.9, height * 0.042, "1");
				draw_sprite(spr_AllGun_rifle, 0, width_half * 0.9, height * 0.025)
				
				draw_set_font(fnt_cutscene);
				draw_set_color(c_white);
				draw_text(width_half * 0.95, height * 0.042, "2");
				draw_sprite(spr_AllGun_shotgun, 0, width_half * 0.95, height * 0.025)
				
				draw_set_font(fnt_cutscene);
				draw_set_color(c_white);
				draw_text(width_half * 1.0, height * 0.042, "3");
				draw_sprite(spr_AllGun_laser, 0, width_half * 1.0, height * 0.025)
			}
			// Draw Rifle + Shotgun HUD
			else if (unlocked_shotgun == true)
			{
				draw_set_font(fnt_cutscene);
				draw_set_color(c_white);
				draw_text(width_half * 0.9, height * 0.042, "1");
				draw_sprite(spr_AllGun_rifle, 0, width_half * 0.9, height * 0.025)
				
				draw_set_font(fnt_cutscene);
				draw_set_color(c_white);
				draw_text(width_half * 0.95, height * 0.042, "2");
				draw_sprite(spr_AllGun_shotgun, 0, width_half * 0.95, height * 0.025)
			}
			// Draw only Rifle HUD
			else
			{
				draw_set_font(fnt_cutscene);
				draw_set_color(c_white);
				draw_text(width_half * 0.9, height * 0.042, "1");
				draw_sprite(spr_AllGun_rifle, 0, width_half * 0.9, height * 0.025)
			}
		}
	}
}

// Display level stats on elevator screen
if (room == rm_elevator)
{
	// Black box
	draw_sprite_ext(spr_blackbar, 0, width * 0.635, height * 0.285, 5, 8, 0, c_black, 1);
	
	// Text
	draw_set_font(fnt_cutscene);
	draw_set_color(c_white);
	draw_text(width * 0.70, height * 0.30, "Level: ");
	draw_text(width * 0.74, height * 0.30, current_level);
	draw_text(width * 0.70, height * 0.41, "Level Time: ");
	draw_text(width * 0.77, height * 0.41, print_time);
	draw_text(width * 0.70, height * 0.47, "Document Found: ");
	draw_text(width * 0.77, height * 0.47, print_collectible);
	draw_text(width * 0.70, height * 0.53, "Rank: ");
	if (rank == "A") { draw_set_color(c_green); };
	else if (rank == "B") { draw_set_color(c_yellow); };
	else if (rank == "C") { draw_set_color(c_red); };
	draw_text(width * 0.77, height * 0.53, rank);
	draw_set_color(c_white);
	draw_text(width * 0.70, height * 0.59, "Total Deaths: ");
	draw_text(width * 0.77, height * 0.59, print_deaths);
	draw_text(width * 0.72, height * 0.66, "Press 'R' to retry");
	draw_text(width * 0.72, height * 0.70, "Press 'SPACE' to continue");
}


