/// @description Movement

/// Horizontal movement (Running)
move_x = keyboard_check(ord("D")) - keyboard_check(ord("A")); // Move left/right
move_x *= move_speed; // Move horizontally based on move_speed


/// Vertical movement (Jumping)

// If on the ground
if (place_meeting(x, y + 2, obj_floor)) // Checks if the player is on the ground
{
	coyote_time = 6; // Sets coyote timer
	move_y = 0; // Stop vertical movement
	if (!place_meeting(x + move_x, y + 2, obj_floor) && place_meeting(x + move_x, y + 10, obj_floor)) // For slopes
	{
		move_y = abs(move_x); // Transfers horizontal speed to vertical speed
		move_x = 0; // Stop horizontal movement
	}
}

coyote_time--; // Decrement this to prevent player jumping whenever they want

if (coyote_time > 0) // Coyote time, so player can jump shortly after leaving the ground
{
	// Jump
	if (keyboard_check_pressed(ord("W"))) move_y -= jump_speed;
}

if (move_y < 10) // If in the air
{ move_y += 1; } // Gravity

/// Falling and gun kickback
// If falling
if (move_y > 0 && move_y < 12) { falling = true;} // Sets falling boolean (needed for gun kickback)
// If not falling
else { falling = false;}

move_y += gunkickback_y; // Gun kickback

move_and_collide(move_x, move_y, obj_floor, 8, 0, 0, move_speed, -1); // xy movement and collisions are calculated

gunkickback_y = 0; // Reset gunkickback

if (instance_exists(obj_AllGun)) 
{ image_xscale = obj_AllGun.image_yscale * 2; }; // Face where the AllGun is being aimed

// Player death
if (health_points <= 0)
{ scr_slide_transition(TRANSITION_MODE.RESTART_ROOM); }; // Restart room

// Press restart button
if keyboard_check_pressed(ord("R"))
{ scr_slide_transition(TRANSITION_MODE.RESTART_GAME); }; // Restart game