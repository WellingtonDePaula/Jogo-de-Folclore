//scaleFactor = 0.00125;
global.ScaleFactors = {
	NORMAL: 670,
	CUCA_JAIL: 500,
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
staticX = 0;
staticY = 0;
camSmoothnessDefault = .3;
camSmoothnessBetween = .1;

clampPos = true;

stateScripts = [
	scrCameraStateFollowTarget,
	scrCameraStateStatic,
	scrCameraStateFollowTargetAiming,
];

//moveToPoint = function(_x, _y, _scale) {
	
//}

enum CameraStates {
	FOLLOW,
	STATIC,
	BETWEEN,
}

state = stateScripts[CameraStates.FOLLOW];