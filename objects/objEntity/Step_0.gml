if(state != undefined) {
	//Executa o estado atual da entidade
	stateScripts[state][subState]();
}
depth = -bbox_bottom;