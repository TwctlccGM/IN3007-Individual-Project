/// @description

// Boss position
x = obj_chaseWall.x + 65; // Move horizontally with the chase wall itself
y = obj_player.y;		  // Move vertically with the player

// Boss shooting
shot_timer--; 
if shot_timer <= 0 
{ 
	// Shot delay (60 frames = 1 second)
	shot_timer = 120;
	// Create projectile
	if (gun_mode <= 1) // Rifle
	{
		audio_play_sound(snd_AllGun_rifle, 0, 0);
		instance_create_layer(x + 40, y, "Projectiles", obj_bullet_enemy_boss);
	}
	else if (gun_mode <= 2) // Shotgun
	{
		audio_play_sound(snd_AllGun_shotgun, 0, 0);
		var _i = 0;
		while (_i < 10) // Determines amount of projectiles
		{
			instance_create_layer(x + 40, y - 10 + _i * 2, "Projectiles", obj_bullet_enemy_boss);
			 _i++
		}
	}
	else if (gun_mode <= 3) // Laser
	{
		audio_play_sound(snd_AllGun_laser, 0, 0);
		var _i = 0;
		while (_i < 4) // Determines amount of projectiles
		{
			instance_create_layer(x + 40 + _i * 20, y, "Projectiles", obj_bullet_enemy_boss);
			 _i++
		}
	}
	else if (gun_mode <= 4) // Rocket
	{
		audio_play_sound(snd_AllGun_rocket, 0, 0);
		instance_create_layer(x + 40, y, "Projectiles", obj_rocket_enemy);
	}
	gun_mode = random_range(0, 4)
}

// Boss defeated
if (health_points <= 0) 
{
	// Tell boss cutscene manager that the boss is dead
	with (obj_cutscene_manager_levelend) { boss_defeated = true; };
	instance_destroy(obj_chaseWall); // Destroy chase wall
	instance_destroy(); // Destroy boss mouth
};


