randomize();
if(!instance_exists(objCamera)) {
	global.cam = instance_create_layer(0, 0, "Camera", objCamera);
}
grid = instance_create_layer(0, 0, "Camera", objMap);