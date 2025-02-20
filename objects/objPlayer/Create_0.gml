event_inherited();

stateScripts = [
	scrPlayerStateIdle,
	scrPlayerStateWalking,
];

stateSprites = [
	sprPlayerIdle,
	sprPlayerWalking,
];

enum States {
    IDLE,
    WALK,
}

state = States.IDLE;

inputs = {
	right: ord("D"),
	left: ord("A"),
	down: ord("S"),
	up: ord("W"),
}

vel = 1;