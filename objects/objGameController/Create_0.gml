randomize();
global.cam = instance_create_layer(0, 0, "Camera", objCamera);
camSetResolution(global.cam, 1280, 720, 2.5);
grid = instance_create_layer(0, 0, "Camera", objMap);