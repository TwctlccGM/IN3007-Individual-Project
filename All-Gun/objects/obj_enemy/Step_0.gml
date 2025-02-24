/// @description Insert description here
shot_timer--;
if shot_timer <= 0 
{ 
	shot_timer = 60;
	instance_create_layer(x, y, "Instances", obj_bullet_enemy); 
}






