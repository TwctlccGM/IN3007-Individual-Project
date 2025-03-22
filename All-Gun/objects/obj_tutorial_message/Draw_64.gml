/// @description
if (tutorial_1 == true) // Cutscene trigger condition
{
	draw_set_color(c_black)
	//draw_rectangle(0, 0, width + 100, height_half / 2, false); // Top bar
	draw_rectangle(0, height_half * 1.75, width + 100, height, false); // Bottom bar
	//draw_sprite_ext(spr_blackbar, 0, 0, 0, 1280, 2, 0, c_black, 1);
	//draw_sprite_ext(spr_blackbar, 0, 0, 600, 1280, 2, 0, c_black, 1);
	//draw_sprite_ext(spr_cutscene_player, 0, 20, 200, 5, 5, 0, c_white, 1);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fnt_cutscene);
	draw_text(width_half, height_half * 1.8, print);
	draw_sprite_ext(spr_graffiti_spacebar, 0, width_half * 1.3, height - 100, 1, 1, 0, c_white, 1);
}



