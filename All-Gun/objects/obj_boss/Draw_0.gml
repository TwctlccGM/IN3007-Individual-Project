/// @description

draw_self(); // Render boss

if (hit_flash > 0)
{
	hit_flash--; // Hitflash timer
	shader_set(sh_white); // Shader
	draw_self(); // Update render
	shader_reset();
}






