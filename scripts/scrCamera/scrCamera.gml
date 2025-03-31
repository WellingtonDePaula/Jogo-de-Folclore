function setCamResolution(_cam, _width, _height, _scaleFactor) {
	with(_cam) {
		scaleFactor = _scaleFactor;
		resolutionWidth = _width;
		resolutionHeight = _height;
		resolutionScale = (resolutionWidth + resolutionHeight) * scaleFactor;	
		setCam();
	}
}
function setCamScale(_cam, _scaleFactor) {
	with(_cam) {
		scaleFactor = _scaleFactor;
		resolutionScale = (resolutionWidth + resolutionHeight) * scaleFactor;
		setCam();
	}
}

function setCam() {
	viewWidth = resolutionWidth / resolutionScale;
	viewHeight = resolutionHeight / resolutionScale;
	
	window_set_size(viewWidth * resolutionScale, viewHeight * resolutionScale);
	surface_resize(application_surface, viewWidth * resolutionScale, viewHeight * resolutionScale);
	display_set_gui_size(viewWidth * resolutionScale, viewHeight * resolutionScale);
	camera_set_view_size(view_camera[0], viewWidth, viewHeight);
	window_center();
	with(objGUI) {
		scaleX = other.resolutionWidth / baseW;
		scaleY = other.resolutionHeight / baseH;
		global.scale = min(scaleX, scaleY);
	}
}

function setCamViewTarget(target) {
	viewTarget = target;
}

function setCamState(cam, stateScript) {
	with(cam) {
		state = stateScripts[stateScript]
	}
}