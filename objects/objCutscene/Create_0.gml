manager = undefined;
currentFrame = 0;
roomTarget = undefined;
sceneArray = undefined;

canSkip = false;

alpha = 1;
minAlpha = 0
fadeTime = 0;
blackScreenTime = 0;

nextFrame = function() {
	//show_debug_message([keyboard_check_pressed(manager.inputs.nextFrame),  canSkip]);
	static step = 0;
	static finished = false;
	if(keyboard_check_pressed(manager.inputs.nextFrame) && !finished) {
		if(canSkip) {
			canSkip = false;
			step ++;
			step = clamp(step, 0, array_length(sceneArray));
			
			if(step == array_length(sceneArray)) {
				finished = true;
				step --;
			}
			currentFrame = step;
			Alarm[0] = sceneArray[currentFrame][1] * 60;
		}
	}
	if(finished) {
		var factor =  (delta / FPS) / (alpha * fadeTime);
		show_debug_message((abs(alpha) + abs(minAlpha)));
		alpha = lerp(alpha, minAlpha, factor);
	}
}

//Alarms
for(var i = 0; i < 12; i++) {
	Alarm[i] = ALARM_INACTIVE;
}