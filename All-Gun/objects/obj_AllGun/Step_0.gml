/// @description Insert description here
image_angle = point_direction(x,y,mouse_x,mouse_y)
if (image_angle >= 90 && image_angle <= 270) 
{ 
	image_yscale = -1;
	x = obj_player.x;
	y = obj_player.y;
}
else
{ 
	image_yscale = 1;
	x = obj_player.x;
	y = obj_player.y;
}

shot_timer--;

switch (state)
{
case ALLGUN_STATE.RIFLE:
	if mouse_check_button(mb_left) && shot_timer <= 0
	{
		shot_timer = 3;
		instance_create_layer(x + 3, y, layer, obj_bullet_player)
	};
    break;
	
case ALLGUN_STATE.SHOTGUN:
	if mouse_check_button_pressed(mb_left) && shot_timer <= 0
	{
		shot_timer = 30;
		instance_create_layer(x + 3, y, layer, obj_bullet_player)
		instance_create_layer(x + 3, y, layer, obj_bullet_player)
		instance_create_layer(x + 3, y, layer, obj_bullet_player)
		instance_create_layer(x + 3, y, layer, obj_bullet_player)
		instance_create_layer(x + 3, y, layer, obj_bullet_player)
	};
    break;
	
case ALLGUN_STATE.LASERBEAM:
	if mouse_check_button(mb_left) 
	{
		instance_create_layer(x + 3, y, layer, obj_laserbeam)
	};
	break;

case ALLGUN_STATE.ROCKET:
	if mouse_check_button_pressed(mb_left) && shot_timer <= 0
	{
		shot_timer = 60;
		instance_create_layer(x + 3, y, layer, obj_rocket)
	};
	break;
}

if keyboard_check(ord("1")) { state = ALLGUN_STATE.RIFLE;		shot_timer = 0; };
if keyboard_check(ord("2")) { state = ALLGUN_STATE.SHOTGUN;		shot_timer = 0; };
if keyboard_check(ord("3")) { state = ALLGUN_STATE.LASERBEAM;	shot_timer = 0; };
if keyboard_check(ord("4")) { state = ALLGUN_STATE.ROCKET;		shot_timer = 0; };

/// @description Insert description here

//	if mouse_check_button(mb_left)  && (laser_active = true)
//	{
//		draw_line_color(x, y, obj_lasertarget.x, obj_lasertarget.y, c_aqua, c_aqua);
//		draw_line_width(x, y, obj_lasertarget.x, obj_lasertarget.y, 10);
//	};


