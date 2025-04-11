/// @description GUI setup

// Variables for GUI scaling
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

// Initialise variables
menu_x = gui_width + 200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25;
menu_font = fnt_cutscene
menu_item_height = font_get_size(fnt_cutscene);
menu_selected = -1;
menu_control = true;

// Menu options
menu[1] = "Start Game";
menu[0] = "Quit";

menu_items = array_length(menu);
menu_cursor = 2;

timer = 31;