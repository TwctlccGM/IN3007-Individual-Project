/// @description

// Boss position
x = obj_chaseWall.x + 30; // Move horizontally with the chase wall itself
y = obj_player.y;		  // Move vertically with the player

// Boss shooting
shot_timer--; 
if shot_timer <= 0 
{ 
	// Shot delay (60 frames = 1 second)
	shot_timer = 60;
	// Create projectile
	instance_create_layer(x, y, "Projectiles", obj_bullet_enemy); 
}

// Boss defeated
if (health_points <= 0) 
{
	// Tell boss cutscene manager that the boss is dead
	with (obj_cutscene_manager_boss) { boss_defeated = true; };
	instance_destroy(obj_chaseWall); // Destroy chase wall
	instance_destroy(); // Destroy boss mouth
};


