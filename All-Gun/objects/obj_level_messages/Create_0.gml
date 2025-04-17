/// @description

// Variables for GUI scaling
width = display_get_gui_width();
height = display_get_gui_height();
height_half = height / 2;
width_half = width / 2;

current_level = 0;		// Used to know which level's message to display
message_active = true;  // Use to turn off/on the message
timer = 0;				// Used to progress dialogue at start of level

str = " ";		// Used to store current string.
print = " ";	// used to print current string...
letter = 0;		// ...letter by letter...
next_line = 0;  // ...and line by line.

// Player is in a level, not elevator room
if (room != rm_elevator)
{
	// Update current level based on current room
	switch(room)
	{
		case rm_level_1:
		{
			current_level = 1;
			audio_stop_sound(snd_music_1);
			audio_play_sound(snd_music_1, 0, 999);
			// Strings of dialogue, change these to change the dialogue
			// *NOTE: Use "\n" to put the same string on a new line
			strings_level_message[0] = "If I'm going to escape this facility...";
			strings_level_message[1] = "...I'll need to find and upgrade the All-Gun!";
			strings_level_message[2] = "Good thing I installed the All-Gun's rifle mode [1] this morning.";
			break;
		}
		case rm_level_2:
		{
			current_level = 2;
			audio_stop_sound(snd_music_1);
			audio_play_sound(snd_music_1, 0, 999);
			strings_level_message[0] = "If I swap to the shotgun mode with [2]...";
			strings_level_message[1] = "...I can shoot downwards while jumping to propel myself!";
			strings_level_message[2] = "Gotta remember I can also swap back to rifle mode with [1].";
			break;
		}
		case rm_level_3:
		{
			current_level = 3;
			audio_stop_sound(snd_music_1);
			audio_play_sound(snd_music_1, 0, 999);
			strings_level_message[0] = "The laser mode [3] can reflect off walls if I hold the trigger.";
			strings_level_message[1] = "It also does good damage to enemies...";
			strings_level_message[2] = "...but won't have any effect on cracked walls.";
			break;
		}
		case rm_level_4:
		{
			current_level = 4;
			audio_stop_sound(snd_music_1);
			audio_play_sound(snd_music_1, 0, 999);
			strings_level_message[0] = "Rockets [4] pack a punch and can explode to hit through walls...";
			strings_level_message[1] = "...or blast through cracked walls instantly!";
			break;
		}
		case rm_level_5:
		{
			current_level = 5;
			audio_stop_sound(snd_music_1);
			audio_play_sound(snd_music_1, 0, 999);
			strings_level_message[0] = "With the All-Gun fully upgraded...";
			strings_level_message[1] = "...I'll be out of this place in no time!";
			break;
		}
		case rm_level_6:
		{
			current_level = 6;
			audio_stop_sound(snd_music_1);
			audio_play_sound(snd_music_1, 0, 999);
			strings_level_message[0] = "The Rifle and Shotgun modes will help me move around in the air.";
			strings_level_message[1] = "I'm close to the end now, I can feel it!";
			break;
		}
		case rm_level_boss:
		{
			current_level = 7;
			audio_stop_sound(snd_music_1);
			audio_play_sound(snd_music_1, 0, 999);
			strings_level_message[0] = "I gotta destroy this wall to lift the lockdown,\n then make it to the exit...";
			strings_level_message[1] = "...and hopefully not die.";
			break;
		}
		case rm_level_end:
		{
			current_level = 8;
			audio_stop_sound(snd_music_1);
			strings_level_message[0] = "You unlocked the power of the All-Gun, \nbeat the AI, \nand escaped the facility!";
			strings_level_message[1] = "Thanks for playing!";
			strings_level_message[2] = "Programming\nby Twctlcc";
			strings_level_message[3] = "Artwork\nby Twctlcc";
			strings_level_message[4] = "Audio\nby Twctlcc\n(made in BeepBox)";
			strings_level_message[5] = "Special Thanks:"
			strings_level_message[6] = "Sara Spalding for her helpful \n'Complete Platformer Tutorial' series";
			strings_level_message[7] = "Reece Geofroy for his \n'How To Pixel Art - Beginner To PRO Tutorial' video";
			strings_level_message[8] = "GameMaker community forums for \ntheir helpful advice";
			strings_level_message[9] = "...and You!";
			break;
		}
	}
}



