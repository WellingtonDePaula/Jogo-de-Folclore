function scrMulaFirstStateChoose() {
	stateDebug = "Choosing State";
	
	
	#region Verify the chasing state
	//Gera um número aleatório de 1 até o número do fator de ataque
	rand = irandom_range(1, chooseAttackFactor);
	
	
	//Se o número aleatório gerado for igual a um ele executa o if
	if(rand == 1 && instance_exists(targetId)) {
		//Para quaisquer paths que podem estar sendo executados
		path_end();
		
		//Reseta as chances dele entrar no modo de ataque
		chooseAttackFactor = maxAttackFactor;
	
		
		var dist = point_distance(x, y, targetId.x, targetId.y);
		
		if(dist <= distToChase) {
			//Verifica a direção que a mula deve atacar, que é onde o player está
			dirToChase = point_direction(x, y, targetId.x, targetId.y);
			//Troca o estado para a mula perseguindo
			state = MulaStates.CHASING;
			//Para de executar o estado
		return;
		}
		
		//Troca a mula para o estado que a prepara para perseguir o player
		state = MulaStates.PRE_CHASING;
		//Para de executar o estado
		return;
	}
	
	//Diminui por um o fator de ataque, fazendo que a cada vez que a mula
	//não entre no modo de ataque, ela tenha mais chance de atacar na próxima vez
	chooseAttackFactor -= 1;
	#endregion
	
	#region Choose the Other states
	var randState = choose(MulaStates.IDLE, MulaStates.MOVING);
	//Verfica as possibilidades do randState
	switch(randState) {
		case MulaStates.IDLE:
			//Para qualquer path que esteja sendo executado
			path_end();
			
			//Troca o estado para o IDLE
			state = randState;
			break;
		
		case MulaStates.MOVING:
			//Gera um ponto aleatório em um range de 200 pixels de si mesmo e atribui para as variaveis
			//xToGo e yToGo
			generateRandPoint()
			//Move a mula para as coordenadas fornecidas
			moveMula(xToGo, yToGo);
			//Troca o estado para o MOVING
			state = randState;
			break;
	}
	#endregion
	
	//Seleciona um valor aleatório entre os possíveis definidos na variavel array de alarmCooldown de forma crescente
	var alarmTime = random_range(alarmCooldown[0], alarmCooldown[1]);
	//Ativa o alarm 0 no tempo calculado
	alarm[0] = alarmTime;
}