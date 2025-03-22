/// @description
//if (room = room_elevator)
//{
	print_collectible = string(level_collectible_get);
	print_time = string(level_time);
	print_level = string(current_level);
	
	draw_set_font(fnt_cutscene);
	draw_set_color(c_white);
	draw_sprite_ext(spr_blackbar, 0, 0, 0, 1280, 0.8, 0, c_black, 1);
	
	draw_text(width_half * 0.1, 10, "Collectible: ");
	draw_text(width_half * 0.3, 10, print_collectible); // Collectible obtained
	draw_text(width_half * 0.9, 10, "Time taken: ");
	draw_text(width_half * 1.1, 10, print_time); // Time taken
	draw_text(width * 0.85, 10, "Level: ");
	draw_text(width * 0.90, 10, print_level); // Current level
	
if (room == room_elevator)
{
	draw_text(width_half * 0.98, height_half * 1.51, "Rank: ");
	draw_text(width_half * 1.03, height_half * 1.51, rank);
}
//}



