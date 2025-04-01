/// @description
other.health_points -= damage_wall; // Apply wall damage
 // If the projectile dealt damage, make the object flash white
if (damage_wall > 0) { other.hit_flash = damage_hitflash; }
instance_destroy(); // Remove the projectile










