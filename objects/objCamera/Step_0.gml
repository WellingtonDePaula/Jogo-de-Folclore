if(instance_exists(viewTarget)) {
	state();
	if(clampPos) {
		camX = clamp(camX, 0, room_width-viewWidth);
		camY = clamp(camY, 0, room_height-viewHeight);
	}
	camera_set_view_pos(view_camera[0], camX, camY);
}