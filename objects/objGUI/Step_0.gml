var resolutionWidth = 0;
var resolutionHeight = 0;

if(instance_exists(global.cam)) {
	resolutionWidth = global.cam.resolutionWidth;
	resolutionHeight = global.cam.resolutionHeight;
}

//Define a escala de forma linear com a resolução usuário
//sizeFactor = (resolutionWidth + resolutionHeight) * 0.0000006;

scale = (resolutionWidth + resolutionHeight) * sizeFactor;