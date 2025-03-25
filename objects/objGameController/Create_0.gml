randomize();

//O game controller faz a certificação de que certos objetos estarão de certeza em todas as rooms, todo objeto
//instanciado aqui, DEVE ser persistente

if(!instance_exists(objCamera)) {
	global.cam = instance_create_layer(0, 0, "Camera", objCamera);
} else {
	global.cam = instance_nearest(x, y, objCamera);
}

if(!instance_exists(objGUI)) {
	GUI = instance_create_layer(0, 0, "GUI", objGUI);
} else {
	GUI = instance_nearest(x, y, objGUI);
}

if(!instance_exists(objMap)) {
	grid = instance_create_layer(0, 0, "GUI", objMap);
} else {
	grid = instance_nearest(x, y, objMap);
}

if(!instance_exists(objCutsceneManager)) {
	cutsceneManager = instance_create_layer(0, 0, "Cutscenes", objCutsceneManager);
} else {
	cutsceneManager = instance_nearest(x, y, objCutsceneManager);
}