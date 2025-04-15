/// @description

// Create explosion
audio_play_sound(snd_rocket_explode, 0, 0);
instance_create_layer(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), "Projectiles", obj_explosion);








