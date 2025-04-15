/// @description

// Apply damage and hitflash to player
with (obj_player)
{
	audio_play_sound(snd_player_hit, 0, 0);
	health_points -= 1; // Damage health
	hit_flash = 3;      // Apply hitflash
}
instance_destroy(); // Destroy projectile











