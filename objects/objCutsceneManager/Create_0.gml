inputs = {
	nextFrame: vk_space,
}

enum FrameCutscenes {
	NEW_GAME,
}

enum FrameScenes {
	ROOM,
	SCENE,
	FADE_ATTRIBUTES,
}

currentScene = undefined;

scenes = [];
scenes[FrameCutscenes.NEW_GAME][FrameScenes.ROOM] = rmCucaJail;
scenes[FrameCutscenes.NEW_GAME][FrameScenes.SCENE] = [sprNewGameCutscene, 1.5]
scenes[FrameCutscenes.NEW_GAME][FrameScenes.FADE_ATTRIBUTES] = {
	alpha: 1,
	minAlpha: 0,
	blackScreenTime: 1,
	fadeTime: 1,
}

startFrameCutscene = function(_cutscene) {
	currentScene = instance_create_layer(0, 0, "GUI", objFrameCutscene);
	with(currentScene) {
		var scenes = other.scenes;
		manager = other;
		roomTarget = scenes[_cutscene][FrameScenes.ROOM];
		sceneArray = scenes[_cutscene][FrameScenes.SCENE];
	
		var attributes = scenes[FrameCutscenes.NEW_GAME][FrameScenes.FADE_ATTRIBUTES];
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

//Alarms
for(var i = 0; i < 12; i++) {
	Alarm[i] = ALARM_INACTIVE;
}