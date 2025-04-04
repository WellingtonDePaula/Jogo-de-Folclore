event_inherited();

velAiming = 1;

velhDash = 0;
velvDash = 0;

vel = 1.5;
velDash = 2.5;

//dashRechargeTime = sprite_get_number(sprPlayerDashFront) * velDash * 2;
dashRechargeTime = 0;
canDash = true;

facing = "front";
isSide = false;

isAiming = false;

#region States
enum PlayerMode {
    NORMAL,
}

enum PlayerStates {
    IDLE,
    MOVING,
    DASH,
}

#region Scripts
// NORMAL
stateScripts[PlayerMode.NORMAL] = [];
stateScripts[PlayerMode.NORMAL][PlayerStates.IDLE] = scrPlayerStateIdle;
stateScripts[PlayerMode.NORMAL][PlayerStates.MOVING] = scrPlayerStateMoving;
stateScripts[PlayerMode.NORMAL][PlayerStates.DASH] = scrPlayerStateDash;
#endregion

#region Sprites
// NORMAL
stateSprites[PlayerMode.NORMAL] = [];
stateSprites[PlayerMode.NORMAL][PlayerStates.IDLE] = [sprPlayerIdleFront, sprPlayerIdleSideFront, sprPlayerIdleBack, sprPlayerIdleSideBack];
stateSprites[PlayerMode.NORMAL][PlayerStates.MOVING] = [sprPlayerMovingFront, sprPlayerMovingSideFront, sprPlayerMovingBack, sprPlayerMovingSideBack];
stateSprites[PlayerMode.NORMAL][PlayerStates.DASH] = [sprPlayerDashFront, sprPlayerDashSideFront, sprPlayerDashBack, sprPlayerDashSideBack];
#endregion

stateMode = PlayerMode.NORMAL;
state = PlayerStates.IDLE;

#endregion States

inputs = {
	right: ord("D"),
	left: ord("A"),
	down: ord("S"),
	up: ord("W"),
	dash: vk_space,
}