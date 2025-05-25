delta = delta_time / 1000000 * FPS;

//if(room == rmTest) {
//	global.cam.clampPos = false;
//}

if(keyboard_check_pressed(ord("O"))) {
	global.cutsceneManager.startRealCutscene(Cutscenes.REAL_TEST);
	//global.cutsceneManager.startRealCutscene(Cutscenes.REAL_FIRST_CUCA_JAIL);
}
if(keyboard_check_pressed(ord("T"))) {
	instance_create_layer(0, 0, "GameController", objDialogSample);
}

//show_debug_message(instance_exists(objRealCutscene));