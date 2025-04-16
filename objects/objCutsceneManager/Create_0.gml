inputs = {
	nextFrame: vk_space,
}

enum Cutscenes {
	NEW_GAME,
}

enum Scenes {
	ROOM,
	SCENE,
	FADE_ATTRIBUTES,
}

currentScene = undefined;

scenes = [];
scenes[Cutscenes.NEW_GAME][Scenes.ROOM] = rmCucaJail;
scenes[Cutscenes.NEW_GAME][Scenes.SCENE] = [sprNewGameCutscene, 1.5]
scenes[Cutscenes.NEW_GAME][Scenes.FADE_ATTRIBUTES] = {
	alpha: 1,
	minAlpha: 0,
	blackScreenTime: 1,
	fadeTime: 1,
}

startCutscene = function(_cutscene) {
	currentScene = instance_create_layer(0, 0, "GUI", objCutscene);
	with(currentScene) {
		var scenes = other.scenes;
		manager = other;
		roomTarget = scenes[_cutscene][Scenes.ROOM];
		sceneArray = scenes[_cutscene][Scenes.SCENE];
	
		var attributes = scenes[Cutscenes.NEW_GAME][Scenes.FADE_ATTRIBUTES];
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