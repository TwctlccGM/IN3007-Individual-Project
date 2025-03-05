/// @description
x = obj_chaseWall.x + 30;
y = obj_player.y;

shot_timer--;
if shot_timer <= 0 
{ 
	shot_timer = 60;
	instance_create_layer(x, y, "Projectiles", obj_bullet_enemy); 
}

if (health_points <= 0) 
{
	with (obj_cutscene_manager_boss) { boss_defeated = true; };
	instance_destroy();
};


