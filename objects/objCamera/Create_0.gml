resolutionWidth = 0;
resolutionHeight = 0;
resolutionScale = 0;

viewWidth = 0;
viewHeight = 0;

camSetResolution(self, 1280, 720, 3.5);

viewTarget = objPlayer;

camX = 0;
camY = 0;
camSmoothness = .4;

stateScripts = [
	scrCameraStateFollowTarget,
	scrCameraStateFollowTargetAiming,
];

States = {
	FOLLOW: 0,
	BETWEEN: 1,
}

state = stateScripts[States.FOLLOW];