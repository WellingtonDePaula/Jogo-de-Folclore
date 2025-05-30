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

facing = 1;
isSide = false;

inv = ds_list_create();

ds_list_add(inv, new Ammo(objRock, 3, 5));

myWeapon = instance_create_layer(0, 0, "Player", objSlingshot);
myWeapon.weaponId = self;
isAiming = false;

#region States
enum PlayerMode {
    NORMAL,
	CUTSCENE,
	USING_SLINGSHOT,
	DIALOG,
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

// CHARGING SLINGSHOT
stateScripts[PlayerMode.USING_SLINGSHOT] = [];
stateScripts[PlayerMode.USING_SLINGSHOT][PlayerStates.IDLE] = scrPlayerStateUsingSlingshotIdle;
stateScripts[PlayerMode.USING_SLINGSHOT][PlayerStates.MOVING] = scrPlayerStateUsingSlingshotMoving;
stateScripts[PlayerMode.USING_SLINGSHOT][PlayerStates.SHOOT] = scrPlayerStateUsingSlingshotShoot;

//CUTSCENE
stateScripts[PlayerMode.CUTSCENE] = [];
stateScripts[PlayerMode.CUTSCENE][PlayerStates.IDLE] = scrPlayerStateCutsceneIdle;
stateScripts[PlayerMode.CUTSCENE][PlayerStates.MOVING] = scrPlayerStateCutsceneMoving;
stateScripts[PlayerMode.CUTSCENE][PlayerStates.DASH] = scrPlayerStateCutsceneDash;
stateScripts[PlayerMode.CUTSCENE][PlayerStates.CRYING] = scrPlayerStateCutsceneCrying;
stateScripts[PlayerMode.CUTSCENE][PlayerStates.GETTING_UP] = scrPlayerStateCutsceneGettingUp;

#endregion

#region Sprites
// NORMAL
stateSprites[PlayerMode.NORMAL] = [];
stateSprites[PlayerMode.NORMAL][PlayerStates.IDLE] = [sprPlayerIdleFront, sprPlayerIdleSideFront, sprPlayerIdleBack, sprPlayerIdleSideBack];
stateSprites[PlayerMode.NORMAL][PlayerStates.MOVING] = [sprPlayerMovingFront, sprPlayerMovingSideFront, sprPlayerMovingBack, sprPlayerMovingSideBack];
stateSprites[PlayerMode.NORMAL][PlayerStates.DASH] = [sprPlayerDashFront, sprPlayerDashSideFront, sprPlayerDashBack, sprPlayerDashSideBack];

// CHARGING SLINGSHOT
stateSprites[PlayerMode.USING_SLINGSHOT] = [];
stateSprites[PlayerMode.USING_SLINGSHOT][PlayerStates.IDLE] = [sprPlayerIdleChargingFront, sprPlayerIdleSideFront, sprPlayerIdleBack, sprPlayerIdleSideBack];
stateSprites[PlayerMode.USING_SLINGSHOT][PlayerStates.MOVING] = [sprPlayerIdleChargingFront, sprPlayerMovingSideFront, sprPlayerMovingBack, sprPlayerMovingSideBack];
stateSprites[PlayerMode.USING_SLINGSHOT][PlayerStates.SHOOT] = [sprPlayerIdleFront, sprPlayerIdleSideFront, sprPlayerIdleBack, sprPlayerIdleSideBack];

//CUTSCENE
stateSprites[PlayerMode.CUTSCENE] = [];
stateSprites[PlayerMode.CUTSCENE][PlayerStates.IDLE] = [sprPlayerIdleFront, sprPlayerIdleSideFront, sprPlayerIdleBack, sprPlayerIdleSideBack];
stateSprites[PlayerMode.CUTSCENE][PlayerStates.MOVING] = [sprPlayerMovingFront, sprPlayerMovingSideFront, sprPlayerMovingBack, sprPlayerMovingSideBack];
stateSprites[PlayerMode.CUTSCENE][PlayerStates.DASH] = [sprPlayerDashFront, sprPlayerDashSideFront, sprPlayerDashBack, sprPlayerDashSideBack];
stateSprites[PlayerMode.CUTSCENE][PlayerStates.CRYING] = [sprPlayerCutsceneCryingFront, sprPlayerCutsceneCryingSideFront, sprPlayerCutsceneCryingBack, sprPlayerCutsceneCryingSideBack];
stateSprites[PlayerMode.CUTSCENE][PlayerStates.GETTING_UP] = [sprPlayerCutsceneGettingUpFront, sprPlayerCutsceneGettingUpSideFront, sprPlayerCutsceneGettingUpBack, sprPlayerCutsceneGettingUpSideBack];

#endregion

changeState(PlayerMode.NORMAL, PlayerStates.IDLE, image_xscale);

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