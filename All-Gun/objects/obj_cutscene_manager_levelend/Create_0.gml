/// @description

// Variables for GUI scaling
width = display_get_gui_width();
height = display_get_gui_height();
height_half = height / 2;
width_half = width / 2;

colliding_with_player = false; // Used to trigger cutscene

str = " ";		// Used to store current string.
print = " ";	// used to print current string...
letter = 0;		// ...letter by letter...
next_line = 0;  // ...and line by line.

// Strings of dialogue, change these to change the dialogue
// *NOTE: Use "\n" to put the same string on a new line
strings[0] = "First line of text";
strings[1] = "Second line of text";
strings[2] = "Third line\nof text";





