function scrMulaFirstStatePreChasing() {
	stateDebug = "Pre Chasing";
	
	//Verifica se a instância targetId está presente na sala
	if(instance_exists(targetId)) {
		//Verifica a direção do player até a mula
		var dir = point_direction(targetId.x, targetId.y, x, y);
		
		//Determina as coordenadas a serem seguidas a partir da direção
		xToGo = targetId.x + lengthdir_x(distToChase, dir);
		yToGo = targetId.y + lengthdir_y(distToChase, dir);
	}
	
	//Para qualquer caminho que esteja sendo executado,
	//para assim o path poder se atualizar com a posição atual
	path_end();
	//Começa o path
	moveMula(xToGo, yToGo);
	
	
	//Caso não haja nenhum caminho o sistema deduz que a mula já chegou
	//no destino e troca o estado para o estado CHASING
	if(path_index == -1) {
		state = MulaStates.CHASING;
	}
}