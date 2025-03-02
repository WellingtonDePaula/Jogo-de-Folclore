event_inherited();

velAiming = 1;

velhDash = 0;
velvDash = 0;

vel = 1.5;
velDash = 2.5;

dashRechargeTime = sprite_get_number(sprPlayerDashFront) * velDash * 2.5;
canDash = true;

facing = "front";
isSide = false;

isAiming = false;

#region States

stateScripts = [
	[
		scrPlayerStateIdle,
		scrPlayerStateWalking,
		scrPlayerStateDash,
	],
	
	[
		scrPlayerStateIdleBucket,
		scrPlayerStateWalkingBucket,
		scrPlayerStateDashBucket,
		scrPlayerStateAimingIdleBucket,
		scrPlayerStateAimingWalkingBucket,
	],
];

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

//#region DASH
		[
			sprPlayerDashFront,
			sprPlayerDashBack,
			sprPlayerDashSideFront,
			sprPlayerDashSideBack,
		],
//#endregion DASH
		
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

//#region DASH
		[
			sprPlayerDashFront,
			sprPlayerDashBack,
			sprPlayerDashSideFront,
			sprPlayerDashSideBack,
		],
//#endregion DASH
		
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

enum PlayerNormalSubState {
    IDLE,
    WALKING,
	DASH,
}

enum PlayerBucketSubState {
	IDLE,
    WALKING,
	DASH,
	AIMING_IDLE,
	AIMING_WALKING,
    THROWING,
}

state = PlayerState.NORMAL;
subState = PlayerNormalSubState.IDLE;

#endregion States

inputs = {
	right: ord("D"),
	left: ord("A"),
	down: ord("S"),
	up: ord("W"),
	aim: mb_right,
	dash: vk_shift,
}