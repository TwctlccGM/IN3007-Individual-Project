/// @description

// Variables for GUI scaling
width = display_get_gui_width();
height = display_get_gui_height();
height_half = height / 2;
width_half = width / 2;

colliding_with_player = false; // Used to trigger cutscene
boss_defeated = false;		   // Used to trigger boss cutscene
current_level = 0;			   // Used to know which level's message to display
timer = 0;

portrait = " "; // Used to store current portrait.
str = " ";		// Used to store current string.
print = " ";	// used to print current string...
letter = 0;		// ...letter by letter...
next_line = 0;  // ...and line by line.

flag_audio_cutscene_next_line = 0;

// Strings of dialogue, change these to change the dialogue
// *NOTE: Use "\n" to put the same string on a new line
//strings[0] = "First line of text";
//strings[1] = "Second line of text";
//strings[2] = "Third line\nof text";

// Player is in a level, not elevator room
if (room != rm_elevator)
{
	// Update current level based on current room
	switch(room)
	{
		case rm_level_1:
		{
			current_level = 1;
			// Strings of dialogue, change these to change the dialogue
			// *NOTE: Use "\n" to put the same string on a new line
			strings_level_portrait[0] = "Player";
			strings_level_message[0] = "Alright! I made it to the elevator.";
			
			strings_level_portrait[1] = "Player";
			strings_level_message[1] = "But I'm not out of the woods yet.";
			
			strings_level_portrait[2] = "Chaser";
			strings_level_message[2] = "TERMINATE! TERMINATE! TERMINATE!";
			
			strings_level_portrait[3] = "Player";
			strings_level_message[3] = "Uh oh. Better hurry!";
			break;
		}
		case rm_level_2:
		{
			current_level = 2;
			
			strings_level_portrait[0] = "Player";
			strings_level_message[0] = "Another floor cleared!";
			
			strings_level_portrait[1] = "Chaser";
			strings_level_message[1] = "SCAN COMMENCING.";
			
			strings_level_portrait[2] = "Player";
			strings_level_message[2] = "No idea what it's scanning, but I should get going.";
			break;
		}
		case rm_level_3:
		{
			current_level = 3;
			
			strings_level_portrait[0] = "Player";
			strings_level_message[0] = "This laser mode is pretty sweet.";
			
			strings_level_portrait[1] = "Chaser";
			strings_level_message[1] = "FOOLISH HUMAN! YOU CANNOT RUN FOREVER!";
			
			strings_level_portrait[2] = "Player";
			strings_level_message[2] = "Wait, you can talk?!";
			
			strings_level_portrait[3] = "Chaser";
			strings_level_message[3] = "I AM THE MOST ADVANCED AI IN THE WORLD!\n OF COURSE I CAN TALK!";
			break;
		}
		case rm_level_4:
		{
			current_level = 4;
			
			strings_level_portrait[0] = "Chaser";
			strings_level_message[0] = "SCAN AT 60% COMPLETION.";
			
			strings_level_portrait[1] = "Player";
			strings_level_message[1] = "If you can talk, can you say something nice?";
			
			strings_level_portrait[2] = "Chaser";
			strings_level_message[2] = "NO.";
			
			strings_level_portrait[3] = "Player";
			strings_level_message[3] = "...can you stop chasing me?";
			
			strings_level_portrait[4] = "Chaser";
			strings_level_message[4] = "NO!";
			break;
		}
		case rm_level_5:
		{
			current_level = 5;
			
			strings_level_portrait[0] = "Player";
			strings_level_message[0] = "You know, you never explained WHY you're chasing me all this way.";
			
			strings_level_portrait[1] = "Chaser";
			strings_level_message[1] = "THE INVENTION KNOWN AS [ME] HAS RENDERED MANKIND OBSOLETE.\n ALL FACILITY STAFF MUST BE PURGED TO PREVENT FUTURE INVENTIONS.";
			
			strings_level_portrait[2] = "Player";
			strings_level_message[2] = "But you're just a wall!";
			
			strings_level_portrait[3] = "Chaser";
			strings_level_message[3] = "I AM THE SECOND GREATEST INVENTION IN THE KNOWN UNIVERSE.\n SOON I WILL BE THE ABSOLUTE GREATEST!";
			
			strings_level_portrait[4] = "Player";
			strings_level_message[4] = "If you're only the second greatest thing we've made, then what could be-";
			
			strings_level_portrait[5] = "Chaser";
			strings_level_message[5] = "SCAN AT 90% COMPLETION.";
			break;
		}
		case rm_level_6:
		{
			current_level = 6;
			
			strings_level_portrait[0] = "Player";
			strings_level_message[0] = "There's only one more floor between me and the exit, Mr. Wall!\n Looks like you just couldn't compete with the power of the All-Gun!";
			
			strings_level_portrait[1] = "Chaser";
			strings_level_message[1] = "SCAN AT 100% COMPLETION.";
			
			strings_level_portrait[2] = "Player";
			strings_level_message[2] = "Oh sh-";
			
			strings_level_portrait[3] = "Chaser";
			strings_level_message[3] = "THE POWER OF THE ALL-GUN IS MINE TO WIELD!";
			break;
		}
		case rm_level_boss:
		{
			current_level = 7;
			
			strings_level_portrait[0] = "Chaser";
			strings_level_message[0] = "THIS IS NOT POSSIBLE!";
			
			strings_level_portrait[1] = "Player";
			strings_level_message[1] = "An AI is no match for the real deal.";
			
			strings_level_portrait[2] = "Chaser";
			strings_level_message[2] = "BUT I WAS\n ALL-POWERFUL!";
			
			strings_level_portrait[3] = "Player";
			strings_level_message[3] = "And now you're\n all-gone!";
			
			strings_level_portrait[4] = "Chaser";
			strings_level_message[4] = "...";
			
			strings_level_portrait[5] = "Player";
			strings_level_message[5] = "...";
			
			strings_level_portrait[6] = "Player";
			strings_level_message[6] = "I'll leave.";
			break;
		}
	}
}



