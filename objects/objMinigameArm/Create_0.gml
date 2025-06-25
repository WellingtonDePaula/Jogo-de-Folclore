event_inherited();

minigameEnd = function() {
	global.gamePaused = false;
	window_set_cursor(cr_default);
	instance_destroy();
}

window_set_cursor(cr_none);

arm = new MinigamePlayerArm(0, 0, sprPlayerArm);

objects = [];
environment = [];