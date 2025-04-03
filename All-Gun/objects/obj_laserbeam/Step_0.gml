/// @description

/*if place_meeting(x + lengthdir_x(speed, direction), y, obj_wall)
{
	var _dir = _wall.image_angle*2 - direction;
	if _dir < 0 _dir += 360;
	direction = _dir
	image_angle = direction; // Makes sprite direction match movement direction
}

if place_meeting(x, y + lengthdir_y(speed, direction), obj_wall)
{
	var _wall = instance_place(x + lengthdir_x(speed, direction), y, obj_wall)
	var _dir = _wall.image_angle*2 - direction;
	if _dir < 0 _dir += 360;
	direction = _dir
	image_angle = direction; // Makes sprite direction match movement direction
}*/

/*var _collide = instance_place(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), all);

if _collide != noone
{
	//if _collide.object_index == obj_wall
	if place_meeting(x + lengthdir_x(speed, direction), y, obj_wall) || place_meeting(x, y + lengthdir_y(speed, direction), obj_wall)
	{
		if bounces > 0
		{
		var _dir = _collide.image_angle * 2 - direction;
		if _dir < 0 _dir += 360;
		direction = _dir
		image_angle = direction; // Makes sprite direction match movement direction
		bounces--;
		}
	}
}*/








