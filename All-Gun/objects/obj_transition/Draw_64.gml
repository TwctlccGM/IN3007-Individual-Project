/// @description Draw black bars (later, replace with a metal door opening/closing sprite)

if (mode != TRANSITION_MODE.OFF)
{
	draw_set_color(c_black);
	// draw_rectangle(0, 0, width, percent * width_half, false);
	// draw_rectangle(0, height, width, height - (percent * width_half), false);
	draw_rectangle(0, 0, percent * width_half, height, false);
	draw_rectangle(width - (percent * width_half), 0, width, height, false);
}





