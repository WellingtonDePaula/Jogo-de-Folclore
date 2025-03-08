objMapresolutionWidth = 0;
resolutionHeight = 0;
resolutionScale = 0;

viewWidth = 0;
viewHeight = 0;

camSetResolution(self, 1280, 720, 2.5);

viewTarget = objPlayer;

camX = 0;
camY = 0;
camSmoothnessDefault = .3;
camSmoothnessBetween = .1;

stateScripts = [
	scrCameraStateFollowTarget,
	scrCameraStateFollowTargetAiming,
];

enum CameraStates {
	FOLLOW,
	BETWEEN,
}

state = stateScripts[CameraStates.FOLLOW];