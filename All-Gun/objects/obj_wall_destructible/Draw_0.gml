/// @description Hit flash
draw_self(); // Render wall

if (hit_flash > 0)
{
	hit_flash--; // Hitflash timer
	shader_set(sh_white); // Shader
	draw_self(); // Update render
	shader_reset();
}








