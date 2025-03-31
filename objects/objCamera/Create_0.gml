//scaleFactor = 0.00125;
global.ScaleFactors = {
	NORMAL: 0.00125,
	CUCA_JAIL: 0.00200,
}

scaleFactor = global.ScaleFactors.NORMAL;
resolutionWidth = 1280;
resolutionHeight = 720;

viewWidth = 0;
viewHeight = 0;

setCamResolution(self, resolutionWidth, resolutionHeight, global.ScaleFactors.NORMAL);

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