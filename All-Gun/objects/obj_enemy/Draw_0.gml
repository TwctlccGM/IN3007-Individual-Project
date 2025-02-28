/// @description Hit flash
draw_self();

if (hit_flash > 0)
{
	hit_flash--;
	shader_set(sh_white);
	draw_self();
	shader_reset();
}






