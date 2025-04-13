/// @description
draw_self(); // Render player

// Draw hitflash on player
if (hit_flash > 0) 
{
	hit_flash--; // Hitflash timer
	shader_set(sh_white); // Shader
	draw_self(); // Update render
	shader_reset(); 
}

if (room != rm_menu && room != rm_elevator && room != rm_level_end)
{
	if (health_points == 3) { health_colour = c_green; }
	else if (health_points == 2) { health_colour = c_yellow; }
	else if (health_points == 1) { health_colour = c_red; }
	draw_healthbar(x - 20, y - 30, x + 20, y - 40, ((health_points / max_health) * 100), c_black, health_colour, health_colour, 0, true, true);
}





