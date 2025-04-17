/// @description Movement

// Prevent player from doing stuff when they reach the level end cutscene
if (room != rm_level_end && room != rm_elevator && !player_paused)
{
	if (hit == true && invincible == false) 
	{ 
		invincible = true; 
		audio_play_sound(snd_player_hit, 0, 0);
		health_points -= 1; // Damage health
		hit_flash = 3;      // Apply hitflash
	};
	
	if (invincible == true) 
	{ 
		hit = false;
		iframe_timer++;
		if (iframe_timer >= 60)
		{
			invincible = false;
			iframe_timer = 0;
		}
	}

/// Horizontal movement (Running)
move_x = keyboard_check(ord("D")) - keyboard_check(ord("A")); // Move left/right
move_x *= move_speed; // Move horizontally based on move_speed

/// Animations
if (move_x != 0) // Walking
{ 
	/// I disabled the walking sounds because they're annoying
	//if  (flag_audio_player_walk = 0)
	//{
	//	audio_play_sound(snd_player_walk, 0, 999);
	//	flag_audio_player_walk = 1;
	//}
	sprite_index = spr_player_run; 
}
else // Standing
{ 
	audio_stop_sound(snd_player_walk);
	flag_audio_player_walk = 0;
	sprite_index = spr_player; 
};

/// Vertical movement (Jumping)

// If on the ground
if (place_meeting(x, y + 2, obj_wall) && move_y > -2) // Checks if the player is on the ground
{
	coyote_time = 6; // Sets coyote timer
	move_y = 0; // Stop vertical movement
	if (!place_meeting(x + move_x, y + 2, obj_wall) && place_meeting(x + move_x, y + 10, obj_wall)) // For slopes
	{
		move_y = abs(move_x); // Transfers horizontal speed to vertical speed
		move_x = 0; // Stop horizontal movement
	}
}
else { sprite_index = spr_player_jump; }

coyote_time--; // Decrement this to prevent player jumping whenever they want

if (coyote_time > 0) // Coyote time, so player can jump shortly after leaving the ground
{
	// Jump
	if (keyboard_check_pressed(vk_space)) 
	{ 
		audio_play_sound(snd_player_jump, 0, 0);
		move_y -= jump_speed; 
		coyote_time = 0;
	};
	else if (keyboard_check_pressed(ord("W"))) 
	{ 
		audio_play_sound(snd_player_jump, 0, 0);
		move_y -= jump_speed; 
		coyote_time = 0;
	};
}

if (move_y < 10) // If in the air
{ 
	move_y += 1; // Gravity
}

/// Falling and gun kickback
// If falling
if (move_y > 0 && move_y < 12) { falling = true;} // Sets falling boolean (needed for gun kickback)
// If not falling
else { falling = false;}

move_y += gunkickback_y; // Gun kickback

move_and_collide(move_x, move_y, obj_wall, 16, 0, 0, move_speed, -1); // xy movement and collisions are calculated

gunkickback_y = 0; // Reset gunkickback

if (instance_exists(obj_AllGun)) 
{ image_xscale = obj_AllGun.image_yscale * 2; }; // Face where the AllGun is being aimed
else if (move_x != 0 && room = rm_menu) image_xscale = sign(move_x) * 4; // Make player face where they're moving on the menu screen
else if (move_x != 0) image_xscale = sign(move_x) * 2; // Make player face where they're moving before obtaining the AllGun

//if (keyboard_check_pressed(vk_escape) && global.pause == false) { global.pause = true; }		// Pause
//else if (keyboard_check_pressed(vk_escape) && global.pause == true) { global.pause = false; };  // Unpause
}

// Player death
if (health_points <= 0) && (flag_audio_player_death = 0)
{ 
	audio_play_sound(snd_player_defeat, 0, 0);
	flag_audio_player_death = 1;
	with (obj_levelstats) { player_died = true; };
	if (!place_meeting(x, y, obj_wall)) { move_y += 1; };
	player_paused = true; // Freeze player
	sprite_index = spr_player_dead; // Change sprite
	scr_slide_transition(TRANSITION_MODE.RESTART_ROOM); // Restart room
};

// Press restart button
//if keyboard_check_pressed(ord("R"))
//{ scr_slide_transition(TRANSITION_MODE.RESTART_GAME); }; // Restart game

if (room = rm_level_end) // In the 'ending' level, make the player move forward
{ 
	x += 2; 
	sprite_index = spr_player_run;
}