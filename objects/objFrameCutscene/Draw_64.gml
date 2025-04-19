if(instance_exists(manager)) {
	var _scale = global.scale;
	draw_sprite_ext(sceneArray[0], currentFrame, 0, 0, _scale, _scale, 0, c_white, alpha);
	
	if(canSkip) {
		drawSkipMessage();
	}
}