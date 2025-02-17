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

switch (state)
{
case ALLGUN_STATE.RIFLE:
	if mouse_check_button(mb_left) 
	{
		instance_create_layer(x + 3, y, layer, obj_bullet_player)
	};
    break;
case ALLGUN_STATE.SHOTGUN:
	if mouse_check_button_pressed(mb_left) 
	{
		instance_create_layer(x + 3, y, layer, obj_bullet_player)
		instance_create_layer(x + 3, y, layer, obj_bullet_player)
		instance_create_layer(x + 3, y, layer, obj_bullet_player)
		instance_create_layer(x + 3, y, layer, obj_bullet_player)
		instance_create_layer(x + 3, y, layer, obj_bullet_player)
	};
    break;
}

if keyboard_check(ord("1")) { state = ALLGUN_STATE.RIFLE };
if keyboard_check(ord("2")) { state = ALLGUN_STATE.SHOTGUN };






