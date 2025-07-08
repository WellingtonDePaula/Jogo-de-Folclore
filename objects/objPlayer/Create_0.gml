event_inherited();

velAiming = 1;

velhDash = 0;
velvDash = 0;

normalVel = 1.5;
shootVel = .8;
velDash = 2.5;

canInteract = true;

//dashRechargeTime = sprite_get_number(sprPlayerDashFront) * velDash * 2;
dashRechargeTime = 0;
canDash = true;

facing = 1;

inv = ds_list_create();

ds_list_add(inv, new Ammo(objRock, 0, 5));

myWeapon = noone;
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
	INTERACT,
	CRYING,
	GETTING_UP,
}

#region Scripts
// NORMAL
stateScripts[PlayerMode.NORMAL] = [];
stateScripts[PlayerMode.NORMAL][PlayerStates.IDLE] = scrPlayerStateIdle;
stateScripts[PlayerMode.NORMAL][PlayerStates.MOVING] = scrPlayerStateMoving;
stateScripts[PlayerMode.NORMAL][PlayerStates.DASH] = scrPlayerStateDash;
stateScripts[PlayerMode.NORMAL][PlayerStates.CRYING] = scrPlayerStateCrying;
stateScripts[PlayerMode.NORMAL][PlayerStates.GETTING_UP] = scrPlayerStateGettingUp;

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
stateSprites[PlayerMode.NORMAL][PlayerStates.CRYING] = [sprPlayerCryingFront, sprPlayerCryingSideFront, sprPlayerCryingBack, sprPlayerCryingSideBack];
stateSprites[PlayerMode.NORMAL][PlayerStates.GETTING_UP] = [sprPlayerGettingUpFront, sprPlayerGettingUpSideFront, sprPlayerGettingUpBack, sprPlayerGettingUpSideBack];

// CHARGING SLINGSHOT
stateSprites[PlayerMode.USING_SLINGSHOT] = [];
stateSprites[PlayerMode.USING_SLINGSHOT][PlayerStates.IDLE] = [sprPlayerIdleChargingFront, sprPlayerIdleChargingSideFront, sprPlayerIdleChargingBack, sprPlayerIdleChargingSideBack];
stateSprites[PlayerMode.USING_SLINGSHOT][PlayerStates.MOVING] = [sprPlayerIdleChargingFront, sprPlayerIdleChargingSideFront, sprPlayerIdleChargingBack, sprPlayerIdleChargingSideBack];
stateSprites[PlayerMode.USING_SLINGSHOT][PlayerStates.SHOOT] = [sprPlayerShootingFront, sprPlayerShootingSideFront, sprPlayerShootingBack, sprPlayerShootingSideBack];

#endregion

//changeState(PlayerMode.NORMAL, PlayerStates.IDLE, image_xscale);

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