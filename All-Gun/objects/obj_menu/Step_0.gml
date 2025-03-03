/// @description Control Menu

// Ease in animation
menu_x += (menu_x_target - menu_x) / menu_speed;

// Controls
if (menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	
	if (keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width + 200;
		menu_selected = menu_cursor;
		// put visual effect code here
		menu_control = false;
	}
}
 if (menu_x > gui_width + 150) && (menu_selected != -1)
 {
	switch (menu_selected)
	{
		case 2: default: 
		scr_slide_transition(TRANSITION_MODE.NEXT);
		break;
		
		case 1:
		scr_slide_transition(TRANSITION_MODE.NEXT);
		// implement save file system here
		break;
		
		case 0: 
		scr_slide_transition(TRANSITION_MODE.END);
		break;
	}
 }


