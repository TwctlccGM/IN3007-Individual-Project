/// @description

/// HUD
// Assign variables for printing in the middle of a level (aka they update frequently)
print_collectible = string(level_collectible_get);
print_time = string(level_time);
print_level = string(current_level);

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

// Print rank (only in elevator room)
if (room == rm_elevator)
{
	draw_text(width_half * 0.98, height_half * 1.51, "Rank: ");
	draw_text(width_half * 1.03, height_half * 1.51, rank);
}




