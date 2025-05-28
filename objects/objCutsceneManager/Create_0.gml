inputs = {
	nextFrame: vk_space,
}

enum Cutscenes {
	FRAME_NEW_GAME,
	REAL_TEST,
	REAL_FIRST_CUCA_JAIL,
}

enum FrameScenes {
	ROOM,
	SCENE,
	FADE_ATTRIBUTES,
}

currentScene = undefined;

scenes = [];
scenes[Cutscenes.FRAME_NEW_GAME] = new frameCutscene(rmCucaJail, sprNewGameCutscene, 1.5, 1, 0, 1, 1);

#region realTestCutscene

var _1 = realScene(
	new RealEntity(objPlayer, new State(
		PlayerMode.CUTSCENE,
		PlayerStates.MOVING
	), 1.5, 0, 1),
);
var _2 = realScene(
	new RealEntity(objPlayer, new State(
		PlayerMode.CUTSCENE,
		PlayerStates.MOVING
	), .5, 0, 1.5),
);

var _3 = realScene(
	new RealEntity(objPlayer, new State(
		PlayerMode.CUTSCENE,
		PlayerStates.IDLE
	), 0, 0, 2),
);

var _4 = realScene(
	new RealEntity(objPlayer, new State(
		undefined,
		undefined,
		PlayerMode.NORMAL,
		PlayerStates.IDLE
	), 0, 0, 0, undefined, undefined, dash, [0, 2.5]),
);

scenes[Cutscenes.REAL_TEST] = realCutscene(
	_1,
	_2,
	_3,
	_4,
);

#endregion

#region realFirstCucaJail

_1 = realScene(
	new RealEntity(objPlayer, new State(
		PlayerMode.CUTSCENE,
		PlayerStates.CRYING
	), 0, 0, 4)
	//new RealEntity(objPlayer, 0, 0, 1.2, undefined, undefined, startDialog, [objDialogSample]),
);

_2 = realScene(
	new RealEntity(objPlayer, new State(
		PlayerMode.CUTSCENE,
		PlayerStates.GETTING_UP
	), 0, 0, 0)
);

_3 = realScene(
	new RealEntity(objPlayer, new State(
		PlayerMode.CUTSCENE,
		PlayerStates.IDLE
	), 0, 0, 1.2)
)

var _4 = realScene(
	new RealEntity(objPlayer, new State(
		PlayerMode.CUTSCENE,
		PlayerStates.MOVING,
		PlayerMode.NORMAL,
		PlayerStates.IDLE
	), 1.5, 270, 1)
)

scenes[Cutscenes.REAL_FIRST_CUCA_JAIL] = realCutscene(
	_1,
	_2,
	_3,
	_4
);

#endregion

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