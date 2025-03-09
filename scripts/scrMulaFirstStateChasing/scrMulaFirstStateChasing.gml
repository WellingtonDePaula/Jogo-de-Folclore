function scrMulaFirstStateChasing(){
	stateDebug = "Chasing";
	
	velh = lengthdir_x(vel, dirToChase);
	velv = lengthdir_y(vel, dirToChase);
	
	move_and_collide(velh, velv, objCollider);
	
	//Antes de fazer ele avançar no player, detectar para qual lado o cavalo esta do player, sua distancia, e então calcular
	//e fazer com que a mula se aproxime o suficiente do player para "chasear" ele
}