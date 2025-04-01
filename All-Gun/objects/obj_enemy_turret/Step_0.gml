/// @description

// Enemy movement and gravity
// if (!place_meeting(x, y + 5, obj_wall)) { move_y += 1; } // In air
// if (place_meeting(x, y + 5, obj_wall))  { move_y = 0;  } // On ground
//if (place_meeting(x + 3, y, obj_floor))  { move_x = -3; } // Touching right wall
//if (place_meeting(x - 3, y, obj_floor))  { move_x = 3;  } // Touching left wall

// move_and_collide(move_x, move_y, obj_wall, 4, 0, 0, move_speed, -1); // Calculate movement

with(obj_turret_target) 
{
	// The 'gate' and 'button' variables are created in the objects 'Creation Code' in the room editor itself.
	// These variables should equal to a number (e.g. 'gate = 1') and match each other.
	// For example, when the button with 'button = 1' is activated, the gate with 'gate = 1' is opened.
    if(target == other.turret)
	{
		other.direction = point_direction(other.x, other.y, self.x, self.y);
    }
}

// Enemy shooting
shot_timer--;
if shot_timer <= 0 
{ 
	// Shot delay (60 frames = 1 second)
	shot_timer = 60;
	// Create projectile
	var _direction = { direction : direction };
	instance_create_layer(x, y, "Projectiles", obj_bullet_enemy_turret, _direction); 
}

// Enemy dies
if (health_points <= 0) { instance_destroy() };




