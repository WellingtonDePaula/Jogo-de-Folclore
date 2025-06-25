global.gamePaused = true;

score = 0;
maxScore = 0;

minigameEnd = function() {
	global.gamePaused = false;
	instance_destroy();
}