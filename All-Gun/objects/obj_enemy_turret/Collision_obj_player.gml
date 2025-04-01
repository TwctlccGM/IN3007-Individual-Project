/// @description

// Apply damage and hitflash to player
with (obj_player)
{
	health_points -= 1; // Damage health
	hit_flash = 3;      // Apply hitflash
}
instance_destroy(self); // Destroy enemy













