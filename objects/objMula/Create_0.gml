event_inherited();

vel = 1.5;

facing = "front";

#region States

stateScripts = [
	[
		scrMulaStateIdle,
		scrMulaStateWalking,
	],
];

#region Sprites
stateSprites = [
//#region NORMAL
	[
//#region IDLE
		[
			sprMulaIdleFront,
		],
//#endregion IDLE
		
//#region WALKING
		[
			sprMulaWalkingFront,
		],
//#endregion WALKING
	],
//#endregion NORMAL
];

#endregion Sprites

enum MulaState {
	NORMAL,
}

enum MulaNormalSubState {
    IDLE,
    WALKING,
}

state = MulaState.NORMAL;
subState = MulaNormalSubState.IDLE;

#endregion States