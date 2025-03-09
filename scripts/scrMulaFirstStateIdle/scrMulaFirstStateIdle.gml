function scrMulaFirstStateIdle() {
	stateDebug = "Idle";
	
	if(path_index > 0) {
		state = MulaStates.MOVING;
	}
}