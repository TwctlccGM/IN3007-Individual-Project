/// @description

// Enemy movement and gravity
// if (!place_meeting(x, y + 5, obj_wall)) { move_y += 1; } // In air
// if (place_meeting(x, y + 5, obj_wall))  { move_y = 0;  } // On ground
//if (place_meeting(x + 3, y, obj_floor))  { move_x = -3; } // Touching right wall
//if (place_meeting(x - 3, y, obj_floor))  { move_x = 3;  } // Touching left wall

// move_and_collide(move_x, move_y, obj_wall, 4, 0, 0, move_speed, -1); // Calculate movement

with(obj_turret_target) 
{
	// The 'target' and 'turret' variables are created in the objects 'Creation Code' in the room editor itself.
	// These variables should equal to a number (e.g. 'target = 1') and match each other.
	// For example, the turret with 'turret = 1' will shoot towards the target with 'target = 1'.
    if(target == other.turret)
	{
		// Make turret point towards the target it is assigned to
		other.direction = point_direction(other.x, other.y, self.x, self.y);
    }
}

// Enemy shooting
shot_timer--;
if shot_timer <= 0 //&& shot_burst_amount >= 0
{ 
	// Shot delay (60 frames = 1 second)
	shot_timer = shot_speed;
	shot_burst_amount--;
	// Create projectile
	var _direction = { direction : direction }; // Struct to tell the bullet to go in the same direction as the turret
	instance_create_layer(x, y, "Projectiles", obj_bullet_enemy_turret, _direction);
	// if (bullet_type = 1) { instance_create_layer(x, y, "Projectiles", obj_bullet_enemy_turret_noclip, _direction); } // Bullets clip through walls
}

if shot_burst_amount <= 0 && shot_burst_total != 0
{ 
	shot_timer = shot_speed * 3;
	shot_burst_amount = shot_burst_total;
};

// Enemy dies
if (health_points <= 0) { instance_destroy() };




