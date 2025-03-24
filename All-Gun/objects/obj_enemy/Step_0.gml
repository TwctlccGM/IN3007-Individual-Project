/// @description

// Enemy shooting
shot_timer--;
if shot_timer <= 0 
{ 
	// Shot delay (60 frames = 1 second)
	shot_timer = 60;
	// Create projectile
	instance_create_layer(x, y, "Projectiles", obj_bullet_enemy); 
}

// Enemy dies
if (health_points <= 0) { instance_destroy() };




