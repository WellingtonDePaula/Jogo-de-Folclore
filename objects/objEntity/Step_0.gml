if(state != undefined) {
	//Executa o estado atual da entidade
	stateScripts[state]();
	
	//Arruma o sprite da entidade
	sprite_index = stateSprites[state];
}
move_and_collide(velh, velv, objCollider);