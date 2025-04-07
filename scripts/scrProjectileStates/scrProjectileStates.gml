function scrProjectileStateIdle(){
	verifyCollision(true);
	
	debugState = "Idle";
	
	velh = 0;
	velv = 0;
}

function scrProjectileStateMoving(){
	verifyCollision(true);
	
	debugState = "Moving";

	spd = lerp(spd, 0, speedDecay);

	//////////////////
	
	velh = lengthdir_x(spd, direction);
	velv = lengthdir_y(spd, direction);
	
	//////////////////
	if(spd <= .05) {
		state = scrProjectileStateIdle;
	}
	
	image_angle += -sign(velh) * spdMultiplier * spd * 4;
}

function scrProjectileStateSliding(){
	verifyCollision(false);
	debugState = "Sliding";
}