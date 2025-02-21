camera_set_view_size(view_camera[0], viewWidth, viewHeight);

if(instance_exists(viewTarget)) {
	camX = lerp(camX, viewTarget.x-viewWidth/2, camSmoothness);
	camY = lerp(camY, viewTarget.y-viewHeight/2, camSmoothness);
	
	camX = clamp(camX, 0, room_width-viewWidth);
	camY = clamp(camY, 0, room_height-viewHeight);
	camera_set_view_pos(view_camera[0], camX, camY);
}