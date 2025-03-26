if(instance_exists(currentScene)) {
	with(currentScene) {
		if(keyboard_check_pressed(other.inputs.nextFrame)) {
			if(currentFrame < array_length(sceneArray) -1) {
				currentFrame += 1;
			} else {
				room_goto(rmGame);
				instance_destroy(other.currentScene);
			}
		}
	}
}