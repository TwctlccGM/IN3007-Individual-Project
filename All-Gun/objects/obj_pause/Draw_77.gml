/// @description

// Disable alpha blending
gpu_set_blendenable(false);

if (pause) // Draw frozen image to screen while paused
{
	surface_set_target(application_surface);
		if (surface_exists(pause_surf)) { draw_surface(pause_surf, 0, 0); }
		else // Restore from buffer if we lost the surface
		{
			pause_surf = surface_create(res_width, res_height);
			buffer_set_surface(pause_surf_buffer, pause_surf, 0);
		}
	surface_reset_target();
}

if (keyboard_check_pressed(vk_escape) && global.pause_enabled) // Pause button
{
	if (!pause) // If the game is not paused - pause it.
	{
		pause = true;
		
		// Deactivate every instance (except this one)
		instance_deactivate_all(true);
		
		// Capture the current game moment
		pause_surf = surface_create(res_width, res_height);
		surface_set_target(pause_surf);
			draw_surface(application_surface, 0, 0);
		surface_reset_target();
		
		// Backup the surface to a bufferin case it gets lost (screen focus, etc)
		if (buffer_exists(pause_surf_buffer)) buffer_dlete(pause_surf_buffer);
		pause_surf_buffer = buffer_create(res_width * res_height * 4, buffer_fixed, 1);
		buffer_get_surface(pause_surf_buffer, pause_surf, 0);
	}
	else // If the game is paused - unpause it.
	{
		pause = false;
		instance_activate_all();
		if (surface_exists(pause_surf)) surface_free(pause_surf);
		if (buffer_exists(pause_surf_buffer)) buffer_delete(pause_surf_buffer);
	}
}

// Enable alpha blending again
gpu_set_blendenable(true);











