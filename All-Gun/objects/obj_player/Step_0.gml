/// @description Insert description here

move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_x *= move_speed;

if (place_meeting(x, y + 2, obj_floor))
{
	move_y = 0;
	if (!place_meeting(x + move_x, y + 2, obj_floor) && place_meeting(x + move_x, y + 10, obj_floor))
{
		move_y = abs(move_x);
		move_x = 0;
}
	if (keyboard_check_pressed(ord("W"))) move_y = -jump_speed;
}
else if (move_y < 10) move_y += 1;

move_and_collide(move_x, move_y, obj_floor, 4, 0, 0, move_speed, -1);

// if (move_x != 0) image_xscale = sign(move_x) * 2;
image_xscale = obj_AllGun.image_yscale * 2;

