inputs = {
	nextFrame: vk_space,
}

enum Cutscenes {
	NEW_GAME,
}

currentScene = undefined;

scenes = [];
scenes[Cutscenes.NEW_GAME] = [
	//sprite da cena, quantos segundos para pular a cena
	[sprEmBreve, 1],
	[sprEmBreve2, 1],
	[sprEmBreve3, 1],
];

startCutscene = function(_scene) {
	currentScene = instance_create_layer(0, 0, "GUI", objCutscene);
	currentScene.manager = self;
	currentScene.sceneArray = scenes[_scene];
	currentScene.alarm[0] = currentScene.sceneArray[currentScene.currentFrame][1] * game_get_speed(gamespeed_fps);
}