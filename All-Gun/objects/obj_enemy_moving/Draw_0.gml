/// @description Hit flash
// The original enemy sprite was 64x64 but the new one is 32x32;
// this yscale doubles the enemy size so that they're normal size in the level design
image_yscale = 2;
if (move_x == -3) { image_xscale = -2; };
else if (move_x == 3) { image_xscale = 2; };
draw_self(); // Render enemy

if (hit_flash > 0)
{
	hit_flash--; // Hitflash timer
	shader_set(sh_white); // Shader
	draw_self(); // Update render
	shader_reset();
}






