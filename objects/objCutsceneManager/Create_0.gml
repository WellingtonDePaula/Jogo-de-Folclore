inputs = {
	nextFrame: vk_space,
}

enum Cutscenes {
	FRAME_NEW_GAME,
	REAL_TEST,
}

enum FrameScenes {
	ROOM,
	SCENE,
	FADE_ATTRIBUTES,
}

currentScene = undefined;

scenes = [];
scenes[Cutscenes.FRAME_NEW_GAME] = new frameCutscene(rmCucaJail, sprNewGameCutscene, 1.5, 1, 0, 1, 1);

var _first = realScene(
	new realEntity(objPlayer, 0, 1, 2),
	new realEntity(objTest, 270, 1.5, 0.5),
);

var _second = realScene(
	new realEntity(objPlayer, 90, 1, 2),
);

scenes[Cutscenes.REAL_TEST] = realCutscene(
	_first,
	_second,
);

startFrameCutscene = function(_cutscene) {
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

startRealCutscene = function(_cutscene) {
	var scene = scenes[_cutscene];
	currentScene = instance_create_layer(0, 0, "GameController", objRealCutscene);
	with(currentScene) {
		steps = scene;
		manager = other;
	}
}
//Alarms
for(var i = 0; i < 12; i++) {
	Alarm[i] = ALARM_INACTIVE;
}