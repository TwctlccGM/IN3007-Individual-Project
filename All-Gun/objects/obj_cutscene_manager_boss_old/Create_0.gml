/// @description

// Initialise variables 
width = display_get_gui_width();
height = display_get_gui_height();
height_half = height / 2;
width_half = width / 2;

boss_defeated = false; // Used to trigger cutscene

str = " ";		// Used to store current string.
print = " ";	// used to print current string...
letter = 0;		// ...letter by letter...
next_line = 0;  // ...and line by line.

// Strings of dialogue, change these to change the dialogue
// *NOTE: Use "\n" to put the same string on a new line
strings[0] = "In the end, that AI was no match for the real deal!"
strings[1] = "...but I did it.";
strings[2] = "I won!";





