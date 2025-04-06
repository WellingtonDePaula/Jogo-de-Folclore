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
			Alarm[0] = sceneArray[currentFrame][1] * FPS;
		}
	}
	
	if(finished) {
		var factor =  (delta / FPS) / (alpha * fadeTime);
		alpha = lerp(alpha, minAlpha, factor);
		
		if(alpha <= minAlpha && Alarm[1] == ALARM_INACTIVE) {
			Alarm[1] = blackScreenTime * FPS;
		}
	}
}

//Alarms
for(var i = 0; i < 12; i++) {
	Alarm[i] = ALARM_INACTIVE;
}