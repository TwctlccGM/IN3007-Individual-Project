/// @description Setup camera

cam = view_camera[0];
follow = obj_player;

view_width_half = camera_get_view_width(cam) * 0.5;
view_height_half = camera_get_view_height(cam) * 0.5;
x_to = xstart;
y_to = ystart;

background_elevator = layer_get_id("Background_Moving");


