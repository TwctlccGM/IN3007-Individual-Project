/// @description Update camera

// Update destination
if (instance_exists(follow))
{
	x_to = follow.x;
	y_to = follow.y;
}

// Update camera position
x += (x_to - x) / 25;
y += (y_to - y) / 25;

x = clamp(x, view_width_half, room_width - view_width_half);
y = clamp(y, view_height_half, room_height - view_height_half);

// Update camera view
camera_set_view_pos(cam, x - view_width_half, y - view_height_half);

//if (layer_exists(background_elevator))
//{
//	layer_y(background_elevator, y / 2);
//}