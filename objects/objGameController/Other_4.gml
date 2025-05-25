switch(room) {
	case rmCucaJail:
		with(global.cam) {
			clampPos = false;
			staticX = room_width/2;
			staticY = room_height/2;
			setCamScale(global.cam, global.ScaleFactors.CUCA_JAIL);
			setCamState(self, CameraStates.STATIC);
		}
		
		global.cutsceneManager.startRealCutscene(Cutscenes.REAL_FIRST_CUCA_JAIL);
		break;

	case rmTest:
		with(global.cam) {
			clampPos = false;
			setCamScale(global.cam, global.ScaleFactors.NORMAL);
			setCamState(self, CameraStates.FOLLOW);
		}
		break;
}