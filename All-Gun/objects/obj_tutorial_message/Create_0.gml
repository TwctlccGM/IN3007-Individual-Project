/// @description

// Variables for GUI scaling
width = display_get_gui_width();
height = display_get_gui_height();
height_half = height / 2;
width_half = width / 2;

colliding_with_player = false; // Used to trigger cutscene (unused atm)
tutorial_1 = true; // Used to trigger cutscene (will probably replace later)

str = " ";		// Used to store current string.
print = " ";	// used to print current string...
letter = 0;		// ...letter by letter...
next_line = 0;  // ...and line by line.

// Strings of dialogue, change these to change the dialogue
// *NOTE: Use "\n" to put the same string on a new line
strings_tutorial1[0] = "I gotta find a way out of here...";
strings_tutorial1[1] = "...by using 'A' 'D' to move,\n and 'W' to jump!";

// Strings of dialogue for second tutorial, unused atm tho
strings_tutorial2[0] = "First line of text";
strings_tutorial2[1] = "Second line of text";
strings_tutorial2[2] = "Third line\nof text";





