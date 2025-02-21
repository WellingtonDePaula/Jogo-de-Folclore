camera_set_view_size(view_camera[0], viewWidth, viewHeight);

if(instance_exists(viewTarget)) {
	state();
	camera_set_view_pos(view_camera[0], camX, camY);
}