/// @description
audio_play_sound(snd_boss_death, 0, 0);
layer_destroy_instances("Projectiles");
with(obj_gate) { instance_destroy(self); } // Gate opens (disappears)


















