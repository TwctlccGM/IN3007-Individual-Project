/// @description
if (boss_defeated = true) // Cutscene trigger condition
{
	// Sprite
	draw_sprite_ext(spr_cutscene_player, 0, 20, 200, 5, 5, 0, c_white, 1);
	
	// Bars (letterboxing)
	draw_sprite_ext(spr_blackbar, 0, 0, 0, 1280, 2, 0, c_black, 1);	  // Top bar
	draw_sprite_ext(spr_blackbar, 0, 0, 600, 1280, 2, 0, c_black, 1); // Bottom bar
	
	// Text
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fnt_cutscene);
	draw_text(640, 620, print);
	
	// Spacebar prompt
	draw_sprite_ext(spr_graffiti_spacebar, 0, width_half * 1.3, height - 100, 1, 1, 0, c_white, 1);
}



