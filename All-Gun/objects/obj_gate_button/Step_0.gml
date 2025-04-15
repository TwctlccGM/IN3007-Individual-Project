/// @description

// If button pressed
if (health_points <= 0)
{ 
	if (flag_audio_button_pressed = 0)
	{
		audio_play_sound(snd_button_press, 0, 0);
		flag_audio_button_pressed = 1;
	}
	sprite_index = spr_gate_button_pressed; // Swap to the 'pressed' sprite
	// Open the corresponding gate
	with(obj_gate) 
	{
		// The 'gate' and 'button' variables are created in the objects 'Creation Code' in the room editor itself.
		// These variables should equal to a number (e.g. 'gate = 1') and match each other.
		// For example, when the button with 'button = 1' is activated, the gate with 'gate = 1' is opened.
        if(gate == other.button)
		{
            instance_destroy(self); // Gate opens (disappears)
        }
	}
};














