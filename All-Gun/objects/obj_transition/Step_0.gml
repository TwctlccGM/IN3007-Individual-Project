/// @description Progress the transition

// If a transition is active
if (mode != TRANSITION_MODE.OFF)
{
	if (mode == TRANSITION_MODE.INTRO)
	{
		// Math for black bars closing down
		percent = max(0, percent - max((percent / 10), 0.005));
	}
	else
	{
		// Math for black bars opening up
		percent = min(1.1, percent + max(((1 - percent) / 10), 0.005));
	}
	
	if (percent == 1.1) || (percent == 0)
	{
		switch(mode)
		{
			// Transition for opening game
			case TRANSITION_MODE.INTRO:
			{
				mode = TRANSITION_MODE.OFF;
				break;
			}
			// Transition to next room
			case TRANSITION_MODE.NEXT:
			{
				mode = TRANSITION_MODE.INTRO;
				room_goto_next();
				break;
			}
			// Transition to specific room
			case TRANSITION_MODE.GOTO:
			{
				mode = TRANSITION_MODE.INTRO;
				room_goto(target);
				break;
			}
			// Transition for restarting room
			case TRANSITION_MODE.RESTART_ROOM:
			{
				room_restart();
				break;
			}
			// Transition for restarting game
			case TRANSITION_MODE.RESTART_GAME:
			{
				game_restart();
				break;
			}
			// Transition for closing game
			case TRANSITION_MODE.END:
			{
				game_end();
				break;
			}
		}
	}
}


