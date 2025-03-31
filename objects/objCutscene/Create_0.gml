manager = undefined;
currentFrame = 0;
roomTarget = undefined;
sceneArray = undefined;

canSkip = false;

nextFrame = function() {
	if(keyboard_check_pressed(manager.inputs.nextFrame) && canSkip) {
		if(currentFrame < array_length(sceneArray) -1) {
			currentFrame += 1;
			canSkip = false;
			Alarm[0] = sceneArray[currentFrame][1] * game_get_speed(gamespeed_fps);
			return;
		}
		room_goto(roomTarget);
		instance_destroy();
	}
}

//Alarms
for(var i = 0; i < 12; i++) {
	Alarm[i] = ALARM_INACTIVE;
}