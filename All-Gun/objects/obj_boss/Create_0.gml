/// @description

// Boss fight stuff
max_health = 800;		    // Max health used to draw full healthbar
health_points = max_health; // Sets actual healthpoints based on max health
shot_timer = 0;				// Delays shots from the boss
hit_flash = 0;				// Hit flash timer
gun_mode = 0;

// GUI scaling for healthbar
width = display_get_gui_width();
height = display_get_gui_height();

