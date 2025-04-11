/// @description Size, Variables, and Mode setup

// Variables for GUI scaling
width = display_get_gui_width();
height = display_get_gui_height();
height_half = height / 2;
width_half = width / 2;

global.pause_enabled = true; // To set whether the game can be paused or not

// State machine for transitions
enum TRANSITION_MODE
{
	OFF,		  // No transition
	NEXT,		  // Transition to next room
	GOTO,		  // Transition to specific room
	RESTART_GAME, // Transition for restarting game
	RESTART_ROOM, // Transition for restarting room
	INTRO,		  // Starting a transition
	END			  // Transition for closing game
}

mode = TRANSITION_MODE.INTRO; // Sets initial mode to INTRO
percent = 1.1; // Variable for how far the black bars should move
target = room; // Variable for which room to go to





