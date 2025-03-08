function scrMulaFirstStateChoose() {
	stateDebug = "Choosing State";
	
	var rand = random_range(0, 9);
	
	//if(rand == 0) {
	//	state = MulaStates.CHASING;
	//	return;
	//}
	state = MulaStates.IDLE;
}