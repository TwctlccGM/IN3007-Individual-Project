/// @description Menu creation

draw_set_font(fnt_cutscene);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var _i = 0; _i < menu_items; _i++)
{
	var _offset = 2;
	var _txt = menu[_i];
	
	if (menu_cursor == _i)
	{
		//_txt = string_insert("> ", _txt, 0);
		if (menu_control) { draw_sprite(spr_AllGun, 0, gui_width - 165, gui_height - 50 -_i*35); }
		var _col = c_white;
	}
	else
	{
		var _col = c_gray;
	}
	var _xx = menu_x;
	var _yy = menu_y - (menu_item_height * (_i * 1.5));
	
	// Draw the menu
	draw_set_color(c_black);
	draw_text(_xx - _offset, _yy, _txt);
	draw_text(_xx + _offset, _yy, _txt);
	draw_text(_xx, _yy + _offset, _txt);
	draw_text(_xx, _yy - _offset, _txt);
	draw_set_color(_col);
	draw_text(_xx, _yy, _txt);
}



