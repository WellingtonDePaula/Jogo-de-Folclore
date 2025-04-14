event_inherited();

velAiming = 1;

velhDash = 0;
velvDash = 0;

normalVel = 1.5;
shootVel = .8;
velDash = 2.5;

//dashRechargeTime = sprite_get_number(sprPlayerDashFront) * velDash * 2;
dashRechargeTime = 0;
canDash = true;

facing = "front";
isSide = false;

ammo = [];
ammo[Bullet.AMMO] = 2;
ammo[Bullet.TYPE] = objRock;

myWeapon = instance_create_layer(0, 0, "Player", objSlingshot);
myWeapon.weaponId = self;
isAiming = false;

#region States
enum PlayerMode {
    NORMAL,
	USING_SLINGSHOT,
}

enum PlayerStates {
    IDLE,
    MOVING,
    DASH,
	SHOOT,
}

#region Scripts
// NORMAL
stateScripts[PlayerMode.NORMAL] = [];
stateScripts[PlayerMode.NORMAL][PlayerStates.IDLE] = scrPlayerStateIdle;
stateScripts[PlayerMode.NORMAL][PlayerStates.MOVING] = scrPlayerStateMoving;
stateScripts[PlayerMode.NORMAL][PlayerStates.DASH] = scrPlayerStateDash;

// CHARGING SLINGSHOT
stateScripts[PlayerMode.USING_SLINGSHOT] = [];
stateScripts[PlayerMode.USING_SLINGSHOT][PlayerStates.IDLE] = scrPlayerStateUsingSlingshotIdle;
stateScripts[PlayerMode.USING_SLINGSHOT][PlayerStates.MOVING] = scrPlayerStateUsingSlingshotMoving;
stateScripts[PlayerMode.USING_SLINGSHOT][PlayerStates.SHOOT] = scrPlayerStateUsingSlingshotShoot;

#endregion

#region Sprites
// NORMAL
stateSprites[PlayerMode.NORMAL] = [];
stateSprites[PlayerMode.NORMAL][PlayerStates.IDLE] = [sprPlayerIdleFront, sprPlayerIdleSideFront, sprPlayerIdleBack, sprPlayerIdleSideBack];
stateSprites[PlayerMode.NORMAL][PlayerStates.MOVING] = [sprPlayerMovingFront, sprPlayerMovingSideFront, sprPlayerMovingBack, sprPlayerMovingSideBack];
stateSprites[PlayerMode.NORMAL][PlayerStates.DASH] = [sprPlayerDashFront, sprPlayerDashSideFront, sprPlayerDashBack, sprPlayerDashSideBack];

// CHARGING SLINGSHOT
stateSprites[PlayerMode.USING_SLINGSHOT] = [];
stateSprites[PlayerMode.USING_SLINGSHOT][PlayerStates.IDLE] = [sprPlayerIdleFront, sprPlayerIdleSideFront, sprPlayerIdleBack, sprPlayerIdleSideBack];
stateSprites[PlayerMode.USING_SLINGSHOT][PlayerStates.MOVING] = [sprPlayerMovingFront, sprPlayerMovingSideFront, sprPlayerMovingBack, sprPlayerMovingSideBack];
stateSprites[PlayerMode.USING_SLINGSHOT][PlayerStates.SHOOT] = [sprPlayerIdleFront, sprPlayerIdleSideFront, sprPlayerIdleBack, sprPlayerIdleSideBack];

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
	shoot: mb_left,
	interact: ord("E"),
}