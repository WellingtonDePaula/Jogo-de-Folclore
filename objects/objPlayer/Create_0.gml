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

stateScripts = {
	NORMAL: {
		IDLE: scrPlayerStateIdle,
		MOVING: scrPlayerStateMoving,
		DASH: scrPlayerStateDash,
	},
	
	BUCKET: {
		IDLE: scrPlayerStateBucketIdle,
		MOVING: scrPlayerStateBucketMoving,
		DASH: scrPlayerStateBucketDash,
	},
	
	BUCKET_AIMING: {
		IDLE: scrPlayerStateBucketAimingIdle,
		MOVING: scrPlayerStateBucketAimingMoving,
		DASH: scrPlayerStateBucketAimingDash,
		THROWING: undefined,
	},
	
};

stateSprites = {
	NORMAL: {
		IDLE: [sprPlayerIdleFront, sprPlayerIdleSideFront, sprPlayerIdleSideBack, sprPlayerIdleBack],
		MOVING: [sprPlayerMovingFront, sprPlayerMovingSideFront, sprPlayerMovingBack, sprPlayerMovingSideBack],
		DASH: [sprPlayerDashFront, sprPlayerDashSideFront, sprPlayerDashBack, sprPlayerDashSideBack],
	},
	
	BUCKET: {
		IDLE: [sprPlayerIdleFront, sprPlayerIdleSideFront, sprPlayerIdleSideBack, sprPlayerIdleBack],
		MOVING: [sprPlayerMovingFront, sprPlayerMovingSideFront, sprPlayerMovingBack, sprPlayerMovingSideBack],
		DASH: [sprPlayerDashFront, sprPlayerDashSideFront, sprPlayerDashBack, sprPlayerDashSideBack],
	},
	
	BUCKET_AIMING: {
		IDLE: [sprPlayerIdleFront, sprPlayerIdleSideFront, sprPlayerIdleSideBack, sprPlayerIdleBack],
		MOVING: [sprPlayerMovingFront, sprPlayerMovingSideFront, sprPlayerMovingBack, sprPlayerMovingSideBack],
		DASH: [sprPlayerDashFront, sprPlayerDashSideFront, sprPlayerDashBack, sprPlayerDashSideBack],
		THROWING: [],
	},
};

enum PlayerMode {
	NORMAL,
	BUCKET,
	BUCKET_AIMING,
}
enum PlayerStates {
	IDLE,
	MOVING,
	DASH,
	THROWING,
}

stateMode = PlayerMode.NORMAL;
state = PlayerStates.IDLE;

#endregion States

inputs = {
	right: ord("D"),
	left: ord("A"),
	down: ord("S"),
	up: ord("W"),
	aim: mb_right,
	dash: vk_space,
}