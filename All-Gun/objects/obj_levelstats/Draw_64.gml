/// @description

/// HUD
// Assign variables for printing in the middle of a level (aka they update frequently)
print_collectible = string(level_collectible_get);
print_time = string(level_time);
print_level = string(current_level);

if (room != rm_level_end && room != rm_elevator)
{
	// Top black bar to make text easier to read
	draw_set_font(fnt_cutscene);
	draw_set_color(c_white);
	draw_sprite_ext(spr_blackbar, 0, 0, 0, 1280, 0.8, 0, c_black, 1);

	// Print the variables
	draw_text(width_half * 0.1, 10, "Collectible: ");	// Collectible obtained
	draw_text(width_half * 0.3, 10, print_collectible);
	draw_text(width_half * 0.9, 10, "Time taken: ");	// Time taken
	draw_text(width_half * 1.1, 10, print_time);
	draw_text(width * 0.85, 10, "Level: ");				// Current level
	draw_text(width * 0.90, 10, print_level);

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
				draw_text(width * 0.4, height * 0.1, "1");
				draw_sprite(spr_AllGun_rifle, 0, width * 0.4, height * 0.08)
				
				draw_set_font(fnt_cutscene);
				draw_set_color(c_white);
				draw_text(width * 0.45, height * 0.1, "2");
				draw_sprite(spr_AllGun_shotgun, 0, width * 0.45, height * 0.08)
				
				draw_set_font(fnt_cutscene);
				draw_set_color(c_white);
				draw_text(width * 0.5, height * 0.1, "3");
				draw_sprite(spr_AllGun_laser, 0, width * 0.5, height * 0.08)
				
				draw_set_font(fnt_cutscene);
				draw_set_color(c_white);
				draw_text(width * 0.55, height * 0.1, "4");
				draw_sprite(spr_AllGun_rocket, 0, width * 0.55, height * 0.08)
			}
			// Draw Rifle + Shotgun + Laser HUD
			else if (unlocked_laser == true)
			{
				draw_set_font(fnt_cutscene);
				draw_set_color(c_white);
				draw_text(width * 0.4, height * 0.1, "1");
				draw_sprite(spr_AllGun_rifle, 0, width * 0.4, height * 0.08)
				
				draw_set_font(fnt_cutscene);
				draw_set_color(c_white);
				draw_text(width * 0.45, height * 0.1, "2");
				draw_sprite(spr_AllGun_shotgun, 0, width * 0.45, height * 0.08)
				
				draw_set_font(fnt_cutscene);
				draw_set_color(c_white);
				draw_text(width * 0.5, height * 0.1, "3");
				draw_sprite(spr_AllGun_laser, 0, width * 0.5, height * 0.08)
			}
			// Draw Rifle + Shotgun HUD
			else if (unlocked_shotgun == true)
			{
				draw_set_font(fnt_cutscene);
				draw_set_color(c_white);
				draw_text(width * 0.4, height * 0.1, "1");
				draw_sprite(spr_AllGun_rifle, 0, width * 0.4, height * 0.08)
				
				draw_set_font(fnt_cutscene);
				draw_set_color(c_white);
				draw_text(width * 0.45, height * 0.1, "2");
				draw_sprite(spr_AllGun_shotgun, 0, width * 0.45, height * 0.08)
			}
			// Draw only Rifle HUD
			else
			{
				draw_set_font(fnt_cutscene);
				draw_set_color(c_white);
				draw_text(width * 0.4, height * 0.1, "1");
				draw_sprite(spr_AllGun_rifle, 0, width * 0.4, height * 0.08)
			}
		}
	}
}

// Display level stats on elevator screen
if (room == rm_elevator)
{
	// Black box
	draw_sprite_ext(spr_blackbar, 0, width * 0.65, height * 0.4, 4, 3, 0, c_black, 1);
	
	// Text
	draw_set_font(fnt_cutscene);
	draw_set_color(c_white);
	draw_text(width * 0.70, height * 0.41, "Level Time: ");
	draw_text(width * 0.75, height * 0.41, print_time);
	draw_text(width * 0.70, height * 0.47, "Collectible: ");
	draw_text(width * 0.75, height * 0.47, print_collectible);
	draw_text(width * 0.70, height * 0.53, "Rank: ");
	draw_text(width * 0.75, height * 0.53, rank);
}


