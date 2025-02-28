/// @description
shot_timer--;
if shot_timer <= 0 
{ 
	shot_timer = 60;
	instance_create_layer(x, y, "Projectiles", obj_bullet_enemy); 
}

if (health_points <= 0) { instance_destroy() };




