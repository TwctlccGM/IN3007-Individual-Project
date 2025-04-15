/// @description

audio_play_sound(snd_AllGun_pickup, 0, 0);
instance_create_layer(x, y, "AllGun", obj_AllGun); // Create AllGun object for the player
instance_destroy(self); // Delete the pickup object










