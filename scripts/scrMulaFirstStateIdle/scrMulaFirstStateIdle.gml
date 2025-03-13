function scrMulaFirstStateIdle() {
	stateDebug = "Idle";
	
	//Caso tenha algum path em execução a mula muda para o estado MOVING
	if(path_index > 0) {
		state = MulaStates.MOVING;
	}
}