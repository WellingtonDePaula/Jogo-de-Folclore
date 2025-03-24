if(!instance_exists(objGUI)) {
	GUI = instance_create_layer(0, 0, "GUI", objGUI);
} else {
	GUI = instance_nearest(x, y, objGUI);
}

manager = undefined;