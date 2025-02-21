function scrCameraStateFollowTarget() {
	camX = lerp(camX, viewTarget.x-viewWidth/2, camSmoothness);
	camY = lerp(camY, viewTarget.y-viewHeight/2, camSmoothness);
	
	camX = clamp(camX, 0, room_width-viewWidth);
	camY = clamp(camY, 0, room_height-viewHeight);
}

function scrCameraStateFollowTargetAiming() {
	var dist = point_distance(viewTarget.x, viewTarget.y, mouse_x, mouse_y);
	var dir = point_direction(viewTarget.x, viewTarget.y, mouse_x, mouse_y);
	//var xx = dist * cos(degtorad(dir));
	//var yy = dist * sin(degtorad(dir));
	
	var xx = viewTarget.x + lengthdir_x(dist*.4, dir);
	var yy = viewTarget.y + lengthdir_y(dist*.4, dir);
	
	camX = lerp(camX, xx - viewWidth/2, .2);
	camY = lerp(camY, yy - viewHeight/2, .2);
	
	camX = clamp(camX, 0, room_width-viewWidth);
	camY = clamp(camY, 0, room_height-viewHeight);
}