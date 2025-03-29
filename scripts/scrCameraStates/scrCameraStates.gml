function scrCameraStateFollowTarget() {
	camX = lerp(camX, (viewTarget.x-viewWidth/2), camSmoothnessDefault * delta);
	camY = lerp(camY, (viewTarget.y-viewHeight/2), camSmoothnessDefault * delta);
	
	camX = clamp(camX, 0, room_width-viewWidth);
	camY = clamp(camY, 0, room_height-viewHeight);
}

function scrCameraStateFollowTargetAiming() {
	var dist = point_distance(viewTarget.x, viewTarget.y, mouse_x, mouse_y);
	var dir = point_direction(viewTarget.x, viewTarget.y, mouse_x, mouse_y);
	
	var xx = viewTarget.x + ((dist * .2) * dcos(dir));
	
	var yy = viewTarget.y - (dist * .2 * dsin(dir));
	
	camX = lerp(camX, xx - viewWidth/2, camSmoothnessBetween * delta);
	camY = lerp(camY, yy - viewHeight/2, camSmoothnessBetween * delta);
	
	camX = clamp(camX, 0, room_width-viewWidth);
	camY = clamp(camY, 0, room_height-viewHeight);
}