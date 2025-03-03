/// @description Movement

move_x = keyboard_check(ord("D")) - keyboard_check(ord("A")); // For left/right
move_x *= move_speed;

if (place_meeting(x, y + 2, obj_floor)) // Checks if the player is on the ground
{
	move_y = 0; // Resets fall speed
	if (!place_meeting(x + move_x, y + 2, obj_floor) && place_meeting(x + move_x, y + 10, obj_floor)) // For slopes
{
	move_y = abs(move_x); // Transfers horizontal speed to vertical speed
	move_x = 0;
}
	if (keyboard_check_pressed(ord("W"))) move_y = -jump_speed; // For jumping
}
else if (move_y < 10) { move_y += 1; } // Gravity

if (move_y > 0 && move_y < 11) { falling = true;} // Falling (needed for gun kickback)
else { falling = false;}

if (!place_meeting(x, y + 2, obj_floor)) { move_y += gunkickback_y; }; // Gun kickback but not when grounded

move_and_collide(move_x, move_y, obj_floor, 4, 0, 0, move_speed, -1); // xy movement and collisions are calculated
gunkickback_y = 0;

if (instance_exists(obj_AllGun)) { image_xscale = obj_AllGun.image_yscale * 2; }; // Face where the AllGun is being aimed

if (health_points <= 0) { scr_slide_transition(TRANSITION_MODE.RESTART_ROOM); }; // Player death
if keyboard_check_pressed(ord("R")) { scr_slide_transition(TRANSITION_MODE.RESTART_GAME); }; // Restart game