/// @description

// Enemy movement and gravity
if(point_distance(x,y,obj_player.x,obj_player.y) < 2000)
{ visible = true;
if (!place_meeting(x, y + 5, obj_wall)) { move_y += 1; } // In air
if (place_meeting(x, y + 5, obj_wall))  { move_y = 0;  } // On ground
//if (place_meeting(x + 3, y, obj_floor))  { move_x = -3; } // Touching right wall
//if (place_meeting(x - 3, y, obj_floor))  { move_x = 3;  } // Touching left wall

move_and_collide(move_x, move_y, obj_wall, 4, 0, 0, move_speed, -1); // Calculate movement

// Enemy shooting
shot_timer--;
if shot_timer <= 0 
{ 
	// Shot delay (60 frames = 1 second)
	shot_timer = shot_speed;
	// Create projectile
	instance_create_layer(x, y - 12, "Projectiles", obj_bullet_enemy); 
}

// Enemy dies
if (health_points <= 0) { instance_destroy() };
}
else { visible = false; };


