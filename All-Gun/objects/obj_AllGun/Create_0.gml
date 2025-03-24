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

shot_timer = 0; // Variable to control rate of fire
recoil = 0; // Variable to control visual recoil (not kickback)

// Load save data to see which modes were unlocked in previous levels
//  *NOTE: At the moment, this causes shotgun to be available in the tutorial.
var _map = scr_load_json("savegame.sav");
unlocked_shotgun = ds_map_find_value(_map, "shotgun unlocked?");


