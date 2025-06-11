inputs = {
	nextFrame: vk_space,
}

enum Cutscenes {
	FRAME_NEW_GAME,
	VIDEO_CUCA_JAIL_GETTING_KEY,
}

enum FrameScenes {
	ROOM,
	SCENE,
	FADE_ATTRIBUTES,
}

currentScene = undefined;

scenes = [];
scenes[Cutscenes.FRAME_NEW_GAME] = new frameCutscene(rmCucaJail, sprNewGameCutscene, 1.5, 1, 0, 1, 1);

scenes[Cutscenes.VIDEO_CUCA_JAIL_GETTING_KEY] = "test.mp4";

startFrameCutscene = function(_cutscene) {
	room_goto(rmCutscenes);
	currentScene = instance_create_layer(0, 0, "GUI", objFrameCutscene);
	with(currentScene) {
		var scenes = other.scenes;
		manager = other;
		roomTarget = scenes[_cutscene].targetRoom;
		sceneArray = scenes[_cutscene].scene;
	
		var attributes = scenes[Cutscenes.FRAME_NEW_GAME].fadeAtribbutes;
		var keys = variable_struct_get_names(attributes);
		
		//Loop para atribuir os valores da estrutura contida em attributes á instância
		for(var i = 0; i < array_length(keys); i++) {
			var name = keys[i];
			var val = variable_struct_get(attributes, name);
			variable_instance_set(self, name, val);
		}
		
		//Alarme para tornar o canSkip true
		Alarm[0] = sceneArray[1] * FPS;
	}
}

startVideoCutscene = function(_cutscene, _toExec = [], _args = []) {
	global.gamePaused = true;
	currentScene = instance_create_layer(0, 0, "GUI", objVideoCutscene);
	var _path = scenes[_cutscene];
	currentScene.toExec = _toExec;
	currentScene.args = _args;
	currentScene.videoPath = _path;
	currentScene.run();
}

//Alarms
for(var i = 0; i < 12; i++) {
	Alarm[i] = ALARM_INACTIVE;
}