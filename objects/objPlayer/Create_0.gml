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
enum PlayerMode {
    NORMAL,
    BUCKET,
    BUCKET_AIMING
}

enum PlayerStates {
    IDLE,
    MOVING,
    DASH,
    THROWING,
}

#region Scripts
// NORMAL
stateScripts[PlayerMode.NORMAL] = [];
stateScripts[PlayerMode.NORMAL][PlayerStates.IDLE] = scrPlayerStateIdle;
stateScripts[PlayerMode.NORMAL][PlayerStates.MOVING] = scrPlayerStateMoving;
stateScripts[PlayerMode.NORMAL][PlayerStates.DASH] = scrPlayerStateDash;

// BUCKET
stateScripts[PlayerMode.BUCKET] = [];
stateScripts[PlayerMode.BUCKET][PlayerStates.IDLE] = scrPlayerStateBucketIdle;
stateScripts[PlayerMode.BUCKET][PlayerStates.MOVING] = scrPlayerStateBucketMoving;
stateScripts[PlayerMode.BUCKET][PlayerStates.DASH] = scrPlayerStateBucketDash;

// BUCKET_AIMING
stateScripts[PlayerMode.BUCKET_AIMING] = [];
stateScripts[PlayerMode.BUCKET_AIMING][PlayerStates.IDLE] = scrPlayerStateBucketAimingIdle;
stateScripts[PlayerMode.BUCKET_AIMING][PlayerStates.MOVING] = scrPlayerStateBucketAimingMoving;
stateScripts[PlayerMode.BUCKET_AIMING][PlayerStates.THROWING] = undefined;
#endregion

#region Sprites
// NORMAL
stateSprites[PlayerMode.NORMAL] = [];
stateSprites[PlayerMode.NORMAL][PlayerStates.IDLE] = [sprPlayerIdleFront, sprPlayerIdleSideFront, sprPlayerIdleBack, sprPlayerIdleSideBack];
stateSprites[PlayerMode.NORMAL][PlayerStates.MOVING] = [sprPlayerMovingFront, sprPlayerMovingSideFront, sprPlayerMovingBack, sprPlayerMovingSideBack];
stateSprites[PlayerMode.NORMAL][PlayerStates.DASH] = [sprPlayerDashFront, sprPlayerDashSideFront, sprPlayerDashBack, sprPlayerDashSideBack];

// BUCKET
stateSprites[PlayerMode.BUCKET] = [];
stateSprites[PlayerMode.BUCKET][PlayerStates.IDLE] = [sprPlayerIdleFront, sprPlayerIdleSideFront, sprPlayerIdleBack, sprPlayerIdleSideBack];
stateSprites[PlayerMode.BUCKET][PlayerStates.MOVING] = [sprPlayerMovingFront, sprPlayerMovingSideFront, sprPlayerMovingBack, sprPlayerMovingSideBack];
stateSprites[PlayerMode.BUCKET][PlayerStates.DASH] = [sprPlayerDashFront, sprPlayerDashSideFront, sprPlayerDashBack, sprPlayerDashSideBack];

// BUCKET_AIMING
stateSprites[PlayerMode.BUCKET_AIMING] = [];
stateSprites[PlayerMode.BUCKET_AIMING][PlayerStates.IDLE] = [sprPlayerIdleFront, sprPlayerIdleSideFront, sprPlayerIdleBack, sprPlayerIdleSideBack];
stateSprites[PlayerMode.BUCKET_AIMING][PlayerStates.MOVING] = [sprPlayerMovingFront, sprPlayerMovingSideFront, sprPlayerMovingBack, sprPlayerMovingSideBack];
stateSprites[PlayerMode.BUCKET_AIMING][PlayerStates.THROWING] = [];
#endregion

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