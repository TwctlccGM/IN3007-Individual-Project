/// @description
if (colliding_with_player = true) // Cutscene trigger condition
{
	// Sprite
	if (portrait == "Player") 
	{
		draw_sprite_ext(spr_cutscene_player, 0, width_half * 0.2, height_half * 0.4, 9, 9, 0, c_white, 1);
	}
	else if (portrait == "Chaser") 
	{
		draw_sprite_ext(spr_chaseWall_mouth, 0, width_half * 0.2, height_half * 0.4, 9, 9, 0, c_white, 1);
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
	draw_sprite_ext(spr_graffiti_spacebar, 0, width_half * 1.3, height - 100, 1, 1, 0, c_white, 1);
}



