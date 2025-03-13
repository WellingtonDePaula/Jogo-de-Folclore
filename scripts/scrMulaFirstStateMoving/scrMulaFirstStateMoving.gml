function scrMulaFirstStateMoving() {
	stateDebug = "Moving";
	
	//Caso não tenha nenhum path em execução a mula entra no estado IDLE
	if(path_index == -1) {
		state = MulaStates.IDLE;
	}
}