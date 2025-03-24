/// @description
other.health_points -= damage_enemy; // Apply enemy damage
 // If the projectile dealt damage, make the object flash white
if (damage_enemy > 0) { other.hit_flash = damage_hitflash; }
instance_destroy(); // Remove the projectile










