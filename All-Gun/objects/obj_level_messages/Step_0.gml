/// @description

// Level Messages
if (message_active == true) // Cutscene trigger condition
{
	timer++;
	//with (obj_pause) { pause = true; };
	// Draws letters of a sentence one by one
	letter += 1; // Time it takes for each letter (Bigger number = Faster)
	print = string_copy(str, 1, letter);
	
	// If the final line of dialogue is reached...
	if (timer >= 180 && (next_line == array_length(strings_level_message) - 1))
	{
		// Level ends, go to level stats elevator scene
		timer = 0;
		message_active = false;
		// global.pause_enabled = true;
	}
	
	// If there is another line of dialogue waiting...
	if (timer >= 180 && (next_line < array_length(strings_level_message) - 1))
	{
		timer = 0	 // Reset timer
		letter = 0;  // Reset letters displayed
		next_line++; // Go to next line
	}
	
	str = strings_level_message[next_line];	// Tells 'print' what text to draw (drawing is done in 'Draw GUI')
}
