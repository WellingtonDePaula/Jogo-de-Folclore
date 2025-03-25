if(keyboard_check_pressed(inputs.nextFrame)) {
	with(currentCutscene) {
		if(currentFrame < array_length(cutsceneArray)-1) {
			currentFrame += 1;
		}
	}
}