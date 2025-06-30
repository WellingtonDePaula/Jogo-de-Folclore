delta = delta_time / 1000000 * FPS;

show_debug_message(instance_exists(objCamera));

//if(room == rmTest) {
//	global.cam.clampPos = false;
//}
if(keyboard_check_pressed(ord("T"))) {
	global.cutsceneManager.startVideoCutscene(Cutscenes.VIDEO_CUCA_JAIL_GETTING_KEY);
}

if(keyboard_check_pressed(vk_escape)) {
	global.gamePaused = !global.gamePaused;
}

//show_debug_message(instance_exists(objRealCutscene));