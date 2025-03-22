/// @description
// Tutorial 1 (WASD)
if (tutorial_1 == true) // Cutscene trigger condition
{
	// Draws letters of a sentence one by one
	letter += 1;
	print = string_copy(str, 1, letter);
	
	// If the final line of dialogue is reached...
	if (keyboard_check_pressed(vk_space)) && (next_line == array_length(strings_tutorial1) - 1)
	{
		tutorial_1 = false;	// Level ends, go to level stats elevator scene
	}
	
	// If there is another line of dialogue waiting...
	if (keyboard_check_pressed(vk_space)) && (next_line < array_length(strings_tutorial1) - 1)
	{
		letter = 0;
		next_line++;
	}
	
	str = strings_tutorial1[next_line];	// Tells 'print' what text to draw (drawing is done in 'Draw GUI')
}
