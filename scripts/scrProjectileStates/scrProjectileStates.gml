function scrProjectileStateIdle(){
	debugState = "Idle";
	
	velh = 0;
	velv = 0;
	
	scale = lerp(scale, 0, .007);
	image_xscale = scale;
	image_yscale = scale;
}

function scrProjectileStateMoving(){
	debugState = "Moving";

	spd = lerp(spd, 0, speedDecay);

	//////////////////
	
	velh = lengthdir_x(spd, direction);
	velv = lengthdir_y(spd, direction);
	
	//////////////////
	if(spd <= .05) {
		state = scrProjectileStateIdle;
	}
	
	image_angle += -sign(velh) * spd * 4 / mass;
	
	if(bounces > maxBounces) {
		instance_destroy();
	}
}