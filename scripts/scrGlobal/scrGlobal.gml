function startCutcsene(_scene) {
	with(objCutsceneManager) {
		currentScene = instance_create_layer(0, 0, "GUI", objCutscene);
		currentScene.manager = self;
		currentScene.sceneArray = scenes[_scene];
	}
}