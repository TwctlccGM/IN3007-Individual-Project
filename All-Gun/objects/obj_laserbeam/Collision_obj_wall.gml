/// @description

//var _wall_bounce_direction = collision_normal(x, y, obj_wall, speed, 1);
//direction = _wall_bounce_direction;
//image_angle = direction; // Makes sprite direction match movement direction

/*if bounces > 0 
{
	var _dir = other.image_angle * 2 - direction;
	if _dir > 0 { _dir += 360; }
	direction = _dir
	image_angle = direction; // Makes sprite direction match movement direction
	bounces--;
	//if bounces = 1 && place_meeting(x, y, other) { instance_destroy(self); };
}
else { instance_destroy(self); }; */

var _olddirection = direction

if bounces > 0
    {
		move_bounce_all(true);
		image_angle = direction; // Makes sprite direction match movement direction
		bounces--;
    }
else { instance_destroy(self); };

var _collisionangle = direction - _olddirection
//instance_destroy()



