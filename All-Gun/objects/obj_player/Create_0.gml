/// @description 
// Initialise variables
max_health = 3;
health_points = 3;		// Health
hit_flash = 0;			// Hitflash timer

move_speed = 8;			// Player speed
jump_speed = 16;		// Jump acceleration (Bigger = Higher jump)

gunkickback_y = 0;		// Gun kickback
coyote_time = 0;		// Coyote time timer
 
falling = false;		// If player is moving 

move_x = 0;				// Movement (horizontal)
move_y = 0;				// Movement (vertical)

//global.pause = false;   // Pause boolean (unused)
player_paused = false;  // Pause specifically for the player (used at level end cutscene)

health_colour = c_green; // For player health bar

// Audio flags (to prevent repeated audio)
flag_audio_player_death = 0;
flag_audio_player_walk = 0;