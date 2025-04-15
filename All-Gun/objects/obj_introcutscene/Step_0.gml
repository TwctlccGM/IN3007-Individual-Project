/// @description

// Camera
camera_set_view_pos(view_camera[0], x_position, 180); // Set camera to viewport 0
x_position = max(x_position + 0.5, 0); // Move camera left slowly

// Draws letters of a sentence one by one
if (flag_audio_cutscene_next_line = 0) 
{
	audio_play_sound(snd_cutscene_next_line, 0, 0);
	flag_audio_cutscene_next_line = 1;
}
letter += 0.5; // Time it takes for each letter (Bigger number = Faster)
print = string_copy(str, 1, letter);

// If the final line of dialogue is reached...
if (keyboard_check_pressed(vk_space)) && (next_line == array_length(strings) - 1)
{
	audio_play_sound(snd_cutscene_next_line, 0, 0);
	// Go to next room
	scr_slide_transition(TRANSITION_MODE.GOTO, rm_level_1);
}
	
// If there is another line of dialogue waiting...
if (keyboard_check_pressed(vk_space)) && (next_line < array_length(strings) - 1)
{
	audio_play_sound(snd_cutscene_next_line, 0, 0);
	letter = 0;  // Reset letters displayed
	next_line++; // Go to next line
}

str = strings[next_line];	// Tells 'print' what text to draw (drawing is done in 'Draw GUI')


