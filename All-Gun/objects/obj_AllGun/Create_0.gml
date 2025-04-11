/// @description

// Manages AllGun modes
enum ALLGUN_STATE
{
	RIFLE,
	SHOTGUN,
	LASERBEAM,
	ROCKET
}

state = ALLGUN_STATE.RIFLE; // Default mode is automatic rifle

// Initialise variables to lock modes
unlocked_shotgun = false;
unlocked_laser = false;
unlocked_rocket	= false;

// Variables to control rate of fire
shot_timer_rifle = 0; 
shot_timer_shotgun = 0; 
//shot_timer_laser = 0; // Laser has no shot timer
shot_timer_rocket = 0; 
recoil = 0; // Variable to control visual recoil (not kickback)

// Load save data to see which modes were unlocked in previous levels
//  *NOTE: At the moment, this causes shotgun to be available in the tutorial.
//var _map = scr_load_json("savegame.sav");
//unlocked_shotgun = ds_map_find_value(_map, "shotgun unlocked?");
//unlocked_laser = ds_map_find_value(_map, "laser unlocked?");
//unlocked_rocket = ds_map_find_value(_map, "rocket unlocked?");
