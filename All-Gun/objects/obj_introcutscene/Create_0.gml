/// @description

// Variables for GUI scaling
width = display_get_gui_width();
height = display_get_gui_height();
height_half = height / 2;
width_half = width / 2;

// Initialise variables
x_position = 640; // For background scrolling
str = " ";		// Used to store current string.
print = " ";	// used to print current string...
letter = 0;		// ...letter by letter...
next_line = 0;  // ...and line by line.

// Strings of dialogue, change these to change the dialogue
// *NOTE: Use "\n" to put the same string on a new line
strings[0] = "I was a scientist for \nAwesome Inventions Inc.";
strings[1] = "But then, \na rogue AI killed everyone.";
strings[2] = "Now I have to get out of here \nusing my own invention...";
strings[3] = "the \nALL-GUN.";

flag_audio_cutscene_next_line = 0;


