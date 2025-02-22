event_inherited();

vel = 1.5;

facing = "front";
isSide = false;

#region States

stateScripts = [
	[
		scrPlayerStateIdle,
		scrPlayerStateWalking,
	],
	
	[
		scrPlayerStateBucketIdle,
		scrPlayerStateBucketWalking,
	],
];

stateSprites = [
	[
		[
			sprPlayerIdleFront,
			sprPlayerIdleBack,
			sprPlayerIdleSideFront,
			sprPlayerIdleSideBack,
		],
		[
			sprPlayerWalkingFront,
			sprPlayerWalkingBack,
			sprPlayerWalkingSideFront,
			sprPlayerWalkingSideBack,
		],
	],
	
	[
		[
			sprPlayerIdleFront,
			sprPlayerIdleBack,
			sprPlayerIdleSideFront,
			sprPlayerIdleSideBack,
		],
		[
			sprPlayerWalkingFront,
			sprPlayerWalkingBack,
			sprPlayerWalkingSideFront,
			sprPlayerWalkingSideBack,
		],
	],

];

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
}

state = PlayerState.NORMAL;
subState = NormalSubState.IDLE;

#endregion

inputs = {
	right: ord("D"),
	left: ord("A"),
	down: ord("S"),
	up: ord("W"),
}