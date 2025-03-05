/// @description
if (colliding_with_player = true) // Cutscene trigger condition
{
	draw_sprite_ext(spr_blackbar, 0, 0, 0, 1280, 2, 0, c_black, 1);
	draw_sprite_ext(spr_blackbar, 0, 0, 600, 1280, 2, 0, c_black, 1);
	draw_sprite_ext(spr_cutscene_player, 0, 20, 200, 5, 5, 0, c_white, 1);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fnt_cutscene);
	draw_text(640, 620, print);
}



