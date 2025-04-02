/// @description

// Initialise variables
direction = point_direction(x,y,mouse_x,mouse_y); // Sets movement direction towards player cursor
direction = random_range(direction - 10, direction + 10) // Sets random spread
image_angle = direction; // Makes sprite direction match movement direction
speed = 20 // Moves in a straight line at this speed

damage_enemy = 1; // How much damage it deals to enemies
damage_wall = 1; // How much damage it deals to walls
damage_hitflash = 2; // How long a hit object flashes white for
