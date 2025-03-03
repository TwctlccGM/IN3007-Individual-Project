/// @description
//if (room = room_elevator)
//{
	print_collectible = string(level_collectible_get);
	print_time = string(level_time);
	draw_set_font(fnt_cutscene);
	draw_set_color(c_white);
	draw_text(150, 50, "Collectible: ");
	draw_text(300, 50, print_collectible); // Collectible obtained
	draw_text(450, 50, "Time taken: ");
	draw_text(600, 50, print_time); // Collectible obtained
//}









