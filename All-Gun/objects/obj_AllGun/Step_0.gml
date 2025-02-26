/// @description
if keyboard_check(ord("1")) && state != ALLGUN_STATE.RIFLE		{ state = ALLGUN_STATE.RIFLE;		shot_timer = 0; };
if keyboard_check(ord("2")) && state != ALLGUN_STATE.SHOTGUN	{ state = ALLGUN_STATE.SHOTGUN;		shot_timer = 0; };
if keyboard_check(ord("3")) && state != ALLGUN_STATE.LASERBEAM  { state = ALLGUN_STATE.LASERBEAM;	shot_timer = 0; };
if keyboard_check(ord("4")) && state != ALLGUN_STATE.ROCKET		{ state = ALLGUN_STATE.ROCKET;		shot_timer = 0; };

shot_timer--;
recoil = 0;
switch (state)
{
case ALLGUN_STATE.RIFLE:
	if mouse_check_button(mb_left) && shot_timer <= 0
	{
		var _default_gunkickback_y = 1;
		shot_timer = 3;
		recoil = 2;
		with(obj_player) 
		{ 
			if falling == false {
			gunkickback_y = lengthdir_y(_default_gunkickback_y, other.image_angle - 180); }
			else if falling == true { // Increases kickback if player is falling (so they hover but don't fly away)
			gunkickback_y = lengthdir_y(_default_gunkickback_y, other.image_angle - 180) * 3.5; }
		}
		instance_create_layer(x + 3, y, "Projectiles", obj_bullet_player)
	};
    break;
	
case ALLGUN_STATE.SHOTGUN:
	if mouse_check_button_pressed(mb_left) && shot_timer <= 0
	{
		var _default_gunkickback_y = 15;
		shot_timer = 30;
		recoil = 10;
		with(obj_player) 
		{ 
			if falling == false {
			gunkickback_y = lengthdir_y(_default_gunkickback_y, other.image_angle - 180); }
			else if falling == true { // Increases kickback if player is falling (so they hover but don't fly away)
			gunkickback_y = lengthdir_y(_default_gunkickback_y, other.image_angle - 180) * 1.7; }
		}
		instance_create_layer(x + 3, y, "Projectiles", obj_bullet_player)
		instance_create_layer(x + 3, y, "Projectiles", obj_bullet_player)
		instance_create_layer(x + 3, y, "Projectiles", obj_bullet_player)
		instance_create_layer(x + 3, y, "Projectiles", obj_bullet_player)
		instance_create_layer(x + 3, y, "Projectiles", obj_bullet_player)
		instance_create_layer(x + 3, y, "Projectiles", obj_bullet_player)
		instance_create_layer(x + 3, y, "Projectiles", obj_bullet_player)
		instance_create_layer(x + 3, y, "Projectiles", obj_bullet_player)
	};
    break;
	
case ALLGUN_STATE.LASERBEAM:
	if mouse_check_button(mb_left) 
	{
		recoil = 0;
		instance_create_layer(x + 3, y, "Projectiles", obj_laserbeam)
	};
	break;

case ALLGUN_STATE.ROCKET:
	if mouse_check_button_pressed(mb_left) && shot_timer <= 0
	{
		shot_timer = 60;
		recoil = 10;
		instance_create_layer(x + 3, y, "Projectiles", obj_rocket)
	};
	break;
}


image_angle = point_direction(x,y,mouse_x,mouse_y)
if (image_angle >= 90 && image_angle <= 270) 
{ 
	image_yscale = -1;
}
else
{ 
	image_yscale = 1;
}

x = obj_player.x;
y = obj_player.y;

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);


