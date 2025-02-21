event_inherited();

stateScripts = [
	scrPlayerStateIdle,
	scrPlayerStateWalking,
];

stateSprites = [
	sprPlayerIdle,
	sprPlayerWalking,
];

States = {
    IDLE: 0,
    WALK: 1,
}

state = States.IDLE;

inputs = {
	right: ord("D"),
	left: ord("A"),
	down: ord("S"),
	up: ord("W"),
}

vel = 1;