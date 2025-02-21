function camSetResolution(cam, width, height, scale) {
	resolutionWidth = width;
	resolutionHeight = height;
	resolutionScale = scale;
	
	viewWidth = resolutionWidth / resolutionScale;
	viewHeight = resolutionHeight / resolutionScale;
	
	window_set_size(viewWidth * resolutionScale, viewHeight * resolutionScale);
	surface_resize(application_surface, viewWidth * resolutionScale, viewHeight * resolutionScale);
	display_set_gui_size(viewWidth * resolutionScale, viewHeight * resolutionScale);
	camera_set_view_size(view_camera[0], viewWidth, viewHeight);
	window_center();
}

function camSetViewTarget(target) {
	viewTarget = target;
}