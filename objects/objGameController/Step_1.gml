delta = delta_time / 1000000 * FPS;

//if(room == rmTest) {
//	global.cam.clampPos = false;
//}

if(keyboard_check_pressed(ord("O"))) {
	global.cutsceneManager.startRealCutscene(Cutscenes.REAL_TEST);
}

//show_debug_message(instance_exists(objRealCutscene));