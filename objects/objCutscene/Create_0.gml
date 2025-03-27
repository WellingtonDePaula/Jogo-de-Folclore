manager = undefined;
currentFrame = 0;
sceneArray = undefined;

canSkip = false;

nextFrame = function() {
	if(keyboard_check_pressed(manager.inputs.nextFrame) && canSkip) {
		if(currentFrame < array_length(sceneArray) -1) {
			currentFrame += 1;
			canSkip = false;
			alarm[0] = sceneArray[currentFrame][1] * game_get_speed(gamespeed_fps);
			return;
		}
		room_goto(rmGame);
		instance_destroy();
	}
}