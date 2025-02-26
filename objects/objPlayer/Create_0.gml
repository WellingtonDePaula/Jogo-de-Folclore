event_inherited();

vel = 1.5;

facing = "front";
isSide = false;

isAiming = false;

stateScripts = [
	[
		scrPlayerStateIdle,
		scrPlayerStateWalking,
	],
	
	[
		scrPlayerStateIdleBucket,
		scrPlayerStateWalkingBucket,
		scrPlayerStateAimingIdleBucket,
		scrPlayerStateAimingWalkingBucket,
	],
];


#region States

#region Sprites
stateSprites = [
//#region NORMAL
	[
	
//#region IDLE
		[
			sprPlayerIdleFront,
			sprPlayerIdleBack,
			sprPlayerIdleSideFront,
			sprPlayerIdleSideBack,
		],
//#endregion IDLE
		
//#region WALKING
		[
			sprPlayerWalkingFront,
			sprPlayerWalkingBack,
			sprPlayerWalkingSideFront,
			sprPlayerWalkingSideBack,
		],
//#endregion WALKING
		
	],
//#endregion NORMAL
	
//#region BUCKET
	[
	
//#region IDLE
		[
			sprPlayerIdleFront,
			sprPlayerIdleBack,
			sprPlayerIdleSideFront,
			sprPlayerIdleSideBack,
		],
//#endregion IDLE
		
//#region WALKING
		[
			sprPlayerWalkingFront,
			sprPlayerWalkingBack,
			sprPlayerWalkingSideFront,
			sprPlayerWalkingSideBack,
		],
//#endregion WALKING
		
//#region IDLE_AIMING
		[
			sprPlayerIdleFront,
			sprPlayerIdleBack,
			sprPlayerIdleSideFront,
			sprPlayerIdleSideBack,
		],
//#endregion IDLE_AIMING
		
//#region WALKING_AIMING
		[
			sprPlayerWalkingFront,
			sprPlayerWalkingBack,
			sprPlayerWalkingSideFront,
			sprPlayerWalkingSideBack,
		],
//#endregion WALKING_AIMING
		
//#region THROWING
		[
			
		],
//#endregion THROWING
		
	],
//#endregion BUCKET
];

#endregion Sprites

enum PlayerState {
	NORMAL,
	BUCKET,
}

enum NormalSubState {
    IDLE,
    WALKING,
}

enum BucketSubState {
	IDLE,
    WALKING,
	AIMING_IDLE,
	AIMING_WALKING,
    THROWING,
}

state = PlayerState.NORMAL;
subState = NormalSubState.IDLE;

#endregion States

inputs = {
	right: ord("D"),
	left: ord("A"),
	down: ord("S"),
	up: ord("W"),
}