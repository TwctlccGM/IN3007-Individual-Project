/// @description
if (colliding_with_player = true) // Cutscene trigger condition
{
	with(obj_levelstats) { level_ended = true; };
	// Draws letters of a sentence one by one
	letter += 0.5; // Time it takes for each letter (Bigger number = Faster)
	print = string_copy(str, 1, letter);
	
	// If the final line of dialogue is reached...
	if (keyboard_check_pressed(vk_space)) && (next_line == array_length(strings) - 1)
	{
		// Level ends, go to level stats elevator scene
		scr_slide_transition(TRANSITION_MODE.GOTO, room_elevator);
	}
	
	// If there is another line of dialogue waiting...
	if (keyboard_check_pressed(vk_space)) && (next_line < array_length(strings) - 1)
	{
		letter = 0;  // Reset letters displayed
		next_line++; // Go to next line
	}
	
	str = strings[next_line];	// Tells 'print' what text to draw (drawing is done in 'Draw GUI')
}


