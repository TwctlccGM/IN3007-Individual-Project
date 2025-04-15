/// @description
if (timer >= 30) { audio_play_sound(snd_AllGun_pickup, 0, 0); };
with (obj_AllGun) {	unlocked_shotgun = true; } // Unlock shotgun mode for the AllGun
instance_destroy(self); // Destroy shotgun pickup












