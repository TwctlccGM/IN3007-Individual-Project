/// @description

// Initialise variables
shot_timer = 0;		// Timer to delay shots
shot_speed = 60;    // How fast it shoots (lower = faster) (can be modified in Creation Code)
shot_burst_amount = 0;
shot_burst_total = 0;
bullet_type = 0;

health_points = 6;  // Health
hit_flash = 0;		// Hit flash timer

move_x = 0;			// Movement (horizontal)
move_y = 0;			// Movement (vertical)
move_speed = 3;		// Maximum xy movement speed

turret_distance = 2000; // The distance where the turret starts shooting (for performance reasons)