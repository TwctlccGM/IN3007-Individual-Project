/// @description

// Keyboard controls and multiple checks to see if the player is allowed to
// switch to the specific AllGun mode

// Rifle
if keyboard_check(ord("1")) && state != ALLGUN_STATE.RIFLE		
{ state = ALLGUN_STATE.RIFLE; };
// Shotgun
if keyboard_check(ord("2")) && state != ALLGUN_STATE.SHOTGUN	&& unlocked_shotgun == true
{ state = ALLGUN_STATE.SHOTGUN;	};
// Laser
if keyboard_check(ord("3")) && state != ALLGUN_STATE.LASERBEAM  && unlocked_laser == true
{ state = ALLGUN_STATE.LASERBEAM; };
// Rocket
if keyboard_check(ord("4")) && state != ALLGUN_STATE.ROCKET		&& unlocked_rocket == true
{ state = ALLGUN_STATE.ROCKET; };

// Decrement shot timers to allow firing again
shot_timer_rifle--;
shot_timer_shotgun--;
//shot_timer_laser--; // Laser has no shot timer
shot_timer_rocket--;

recoil = 0; // Reset visual recoil

// AllGun mode state machine
switch (state)
{
case ALLGUN_STATE.RIFLE:
	if mouse_check_button(mb_left) && shot_timer_rifle <= 0 // Fire rifle
	{
		var _default_gunkickback_y = 1;  // Bigger number = Increased knockback
		shot_timer_rifle = 3;					 // Bigger number = Longer cooldown
		recoil = 2;						 // Bigger number = Bigger visual recoil
		
		with(obj_player) // Changes gunkickback depending on if player is moving downward
		{ 
			// Normal kickback
			if falling == false
			{ gunkickback_y = lengthdir_y(_default_gunkickback_y, other.image_angle - 180); }
			// Increases kickback if player is falling (so they hover but don't fly away)
			else if falling == true
			{ gunkickback_y = lengthdir_y(_default_gunkickback_y, other.image_angle - 180) * 3.3; }
		}
		
		// Create projectile
		instance_create_layer(x + 3, y, "Projectiles", obj_bullet_player)
	};
    break;
	
case ALLGUN_STATE.SHOTGUN:
	if mouse_check_button(mb_left) && shot_timer_shotgun <= 0 // Fire shotgun
	{
		var _default_gunkickback_y = 15; // Bigger number = Increased knockback
		shot_timer_shotgun = 45;				 // Bigger number = Longer cooldown
		recoil = 10;					 // Bigger number = Bigger visual recoil
		
		with(obj_player) // Changes gunkickback depending on if player is moving downward
		{ 
			// Normal kickback
			//if falling == false {
			gunkickback_y = lengthdir_y(_default_gunkickback_y, other.image_angle - 180); //}
			// Increases kickback if player is falling (so they hover but don't fly away)
			//else if falling == true { // Increases kickback if player is falling
			//gunkickback_y = lengthdir_y(_default_gunkickback_y, other.image_angle - 180) * 1.7; }
		}
		
		// Create projectiles
		var _i = 0;
		while (_i < 20) // Determines amount of projectiles
		{
			instance_create_layer(x + 3, y, "Projectiles", obj_bullet_player)
			 _i++
		}
	};
    break;
	
case ALLGUN_STATE.LASERBEAM:
	if mouse_check_button(mb_left) // Fire laser
	{
		// Laser has no kickback, recoil, and fires every frame (no shot_timer)
		recoil = 0;
		
		// Create projectile
		instance_create_layer(x + 3, y, "Projectiles", obj_laserbeam)
	};
	break;

case ALLGUN_STATE.ROCKET:
	if mouse_check_button(mb_left) && shot_timer_rocket <= 0 // Fire rocket
	{
		// Rocket has no kickback
		shot_timer_rocket = 60; // Bigger number = Longer cooldown
		recoil = 10;	 // Bigger number = Bigger visual recoil
		
		// Create projectile
		instance_create_layer(x + 3, y, "Projectiles", obj_rocket)
	};
	break;
}

// Gun image angling
image_angle = point_direction(x,y,mouse_x,mouse_y) // Looks towards player's cursor

if (image_angle >= 90 && image_angle <= 270) { image_yscale = -1; } // Flips gun if facing left
else { image_yscale = 1; } // Normal gun direction if facing right

// Gun positioning (attached to player)
x = obj_player.x;
y = obj_player.y;

// Move backwards when firing, depending on recoil
x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);


