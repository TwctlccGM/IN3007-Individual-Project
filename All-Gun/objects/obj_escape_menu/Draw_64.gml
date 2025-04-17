/// @description
if (pause_screen == true)
{
	pause_timer++;
	// Black background
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, width, height, false); // Black background
	draw_set_alpha(1);
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fnt_cutscene);
	draw_text(width_half, height_half, "Are you sure you want to quit?");
	draw_text(width_half, height_half * 1.2, "ESC: Quit");
	draw_text(width_half, height_half * 1.1, "SPACE: Continue");
	
	if (keyboard_check_released(vk_escape) && pause_timer >= 10) { scr_slide_transition(TRANSITION_MODE.END); };
	if (keyboard_check_released(vk_space) && pause_timer >= 10) 
	{ 
		pause_screen = false; 
		pause_timer = 0; 
		with (obj_player) { player_paused = false; };
	with (obj_chaseWall) { paused = false; };
	};
}


















