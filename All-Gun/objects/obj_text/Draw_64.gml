/// @description

if (room == rm_menu)
{
	// Black box
	//draw_sprite_ext(spr_blackbar, 0, width * 0.65, height * 0.4, 4, 3, 0, c_black, 1);
	
	// Quit Text
	draw_set_font(fnt_cutscene);
	draw_set_color(c_black);
	draw_text_transformed(width * 0.19, height * 0.4, "Quit", 5, 5, 0);
	draw_text_transformed(width * 0.67, height * 0.4, "Start", 5, 5, 0);
	draw_text_transformed(width * 0.39, height * 0.64, "<- A", 2, 2, 0);
	draw_text_transformed(width * 0.57, height * 0.64, "D ->", 2, 2, 0);
}
















