/// @description
if (keyboard_check_released(vk_escape) || (pause_screen == true)) 
{ 
	pause_screen = true; 
	with (obj_player) { player_paused = true; };
	with (obj_chaseWall) { paused = true; };
};

















