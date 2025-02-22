if(state != undefined) {
	//Executa o estado atual da entidade
	stateScripts[state][subState]();
}
move_and_collide(velh, velv, objCollider);