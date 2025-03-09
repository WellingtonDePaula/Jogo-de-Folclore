function scrMulaFirstStateChoose() {
	stateDebug = "Choosing State";
	
	rand = round(random_range(1, chooseAttackFactor));
	
	if(rand == 1) {
		state = MulaStates.CHASING;
		path_end();
		chooseAttackFactor = maxAttackFactor;
		if(instance_exists(targetId)) {
			dirToChase = point_direction(x, y, targetId.x, targetId.y);
		}
		return;
	}
	chooseAttackFactor -= 1;
	
	var factor = 10;
	rand = random_range(1, factor);
	
	show_debug_message(rand);
	
	if(rand >= 1 && rand <= 5) {
		moveToPoint();
		state = MulaStates.MOVING;
	} else {
		path_end();
		state = MulaStates.IDLE;
	}
	
	var alarmTime = random_range(alarmCooldown[0], alarmCooldown[1]);
	alarm[0] = alarmTime;
}