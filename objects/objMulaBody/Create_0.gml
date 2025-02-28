event_inherited();

vel = 1.5;

facing = "front";
isSide = false;

#region Arms

enum armOrientations {
	TOP_RIGHT,
	TOP_LEFT,
	BOTTOM_LEFT,
	BOTTOM_RIGHT,
}

arms = {
	topLeft: instance_create_layer(x, y, "Bosses", objMulaArm), topRight: instance_create_layer(x, y, "Bosses", objMulaArm),
	bottomLeft: instance_create_layer(x, y, "Bosses", objMulaArm), bottomRight: instance_create_layer(x, y, "Bosses", objMulaArm),
}
arms.topRight.orientation = armOrientations.TOP_RIGHT;
arms.topLeft.orientation = armOrientations.TOP_LEFT;
arms.bottomLeft.orientation = armOrientations.BOTTOM_LEFT;
arms.bottomRight.orientation = armOrientations.BOTTOM_RIGHT;

#endregion

#region States

stateScripts = [
	[
		scrMulaBodyStateIdle,
		scrMulaBodyStateWalking,
	],
];

#region Sprites
stateSprites = [
//#region NORMAL
	[
//#region IDLE
		[
			sprMulaBodyIdle,
		],
//#endregion IDLE
		
//#region WALKING
		[
			sprMulaBodyWalking,
		],
//#endregion WALKING
	],
//#endregion NORMAL
];

#endregion Sprites

enum MulaBodyState {
	NORMAL,
}

enum MulaBodyNormalSubState {
    IDLE,
    WALKING,
}

state = MulaBodyState.NORMAL;
subState = MulaBodyNormalSubState.IDLE;

#endregion States