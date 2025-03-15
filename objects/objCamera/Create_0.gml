scaleFactor = 0.00125;
resolutionWidth = 1280;
resolutionHeight = 720;
resolutionScale = (resolutionWidth + resolutionHeight) * scaleFactor;

viewWidth = 0;
viewHeight = 0;

setCamResolution(self, resolutionWidth, resolutionHeight);

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