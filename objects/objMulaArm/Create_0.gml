event_inherited();

vel = 1.5;

facing = "front";
isSide = false;

orientation = 0;


#region States

stateScripts = [
	[
		scrMulaArmStateIdle,
		scrMulaArmStateWalking,
	],
];

#region Sprites
stateSprites = [
//#region NORMAL
	[
//#region IDLE
		[

		],
//#endregion IDLE
		
//#region WALKING
		[

		],
//#endregion WALKING
	],
//#endregion NORMAL
];

#endregion Sprites

enum MulaArmState {
	NORMAL,
}

enum MulaArmNormalSubState {
    IDLE,
    WALKING,
}

state = MulaArmState.NORMAL;
subState = MulaArmNormalSubState.IDLE;

#endregion States