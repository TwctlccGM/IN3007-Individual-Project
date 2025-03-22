/// @description Size, Variables, and Mode setup

width = display_get_gui_width();
height = display_get_gui_height();
height_half = height / 2;
width_half = width / 2;

enum TRANSITION_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART_GAME,
	RESTART_ROOM,
	INTRO,
	END
}
mode = TRANSITION_MODE.INTRO;
percent = 1.1;
target = room;





