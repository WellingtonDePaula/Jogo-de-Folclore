inputs = {
	nextFrame: vk_space,
}

enum Cutscenes {
	NEW_GAME,
}

enum Scenes {
	ROOM,
	SCENES,
}

currentScene = undefined;

scenes = [];
scenes[Cutscenes.NEW_GAME][Scenes.ROOM] = rmCucaJail;
scenes[Cutscenes.NEW_GAME][Scenes.SCENES] = [
	[sprEmBreve, 1],
	[sprEmBreve2, 1],
	[sprEmBreve3, 1],
];

startCutscene = function(_scene) {
	currentScene = instance_create_layer(0, 0, "GUI", objCutscene);
	currentScene.manager = self;
	currentScene.roomTarget = scenes[_scene][Scenes.ROOM];
	currentScene.sceneArray = scenes[_scene][Scenes.SCENES];
	currentScene.Alarm[0] = currentScene.sceneArray[currentScene.currentFrame][1] * game_get_speed(gamespeed_fps);
}

//Alarms
for(var i = 0; i < 12; i++) {
	Alarm[i] = ALARM_INACTIVE;
}