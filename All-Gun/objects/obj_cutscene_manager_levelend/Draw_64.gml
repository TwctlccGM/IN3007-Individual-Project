/// @description
if (colliding_with_player = true || boss_defeated == true) // Cutscene trigger condition
{	
	// Black background
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, width, height, false); // Black background
	draw_set_alpha(1);
	
	// Sprites
	if (portrait == "Player") 
	{
		draw_sprite_ext(spr_cutscene_player, 0, width_half * 1.3, height_half * 0.7, 9, 9, 0, c_white, 1);
	}
	else if (portrait == "Chaser") 
	{
		draw_sprite_ext(spr_chaseWall, 0, width_half * 0.1, height_half * 0.7, 9, 59, 0, c_white, 1);
		draw_sprite_ext(spr_cutscene_chaser, 0, width_half * 0.1, height_half * 0.6, 9, 9, 0, c_white, 1);
	}
	
	// Bars (letterboxing)
	draw_set_color(c_black);
	draw_rectangle(0, 0, width + 100, height_half * 0.3, false); // Top bar
	draw_rectangle(0, height_half * 1.75, width + 100, height, false); // Bottom bar
	
	// Text
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fnt_cutscene);
	draw_text(width_half, height_half * 1.8, print);
	
	// Spacebar prompt
	draw_sprite_ext(spr_graffiti_spacebar, 0, width_half * 0.98, height_half * 1.67, 1, 1, 0, c_white, 1);
}



