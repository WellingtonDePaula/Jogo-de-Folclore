function checkMoveInput(inputs) {
	var right, left, down, up, keys, moveDir;
	
	right = keyboard_check(inputs.right);
	left = keyboard_check(inputs.left);
	down = keyboard_check(inputs.down);
	up = keyboard_check(inputs.up);
	
	keys = right - left != 0 || down - up != 0;
	moveDir = point_direction(0, 0, right - left, down - up);
	
	return [keys, moveDir];
}

function updatePlayerMovement(vel, inputKeys) {
	var inputsUpdated, keys, moveDir
	
	inputsUpdated = checkMoveInput(inputs);
	keys = inputsUpdated[0];
	moveDir = inputsUpdated[1];
	
	var hSpeed, vSpeed;
	hSpeed = lengthdir_x(vel * keys, moveDir);
	vSpeed = lengthdir_y(vel * keys, moveDir);
	
	return [hSpeed, vSpeed];
}

function fixPlayerSideSprite() {
	if(isAiming) {
		if(mouse_x > x) {
			image_xscale = 1;
			return;
		}
		image_xscale = -1;
		return;
	}
	if(velh != 0) {
		image_xscale = sign(velh);
		return;
	}
}

function updatePlayerDirection() {
	var right, left, down, up, dir, keys;
	
	right = keyboard_check(inputs.right);
	left = keyboard_check(inputs.left);
	down = keyboard_check(inputs.down);
	up = keyboard_check(inputs.up);
	
	switch(isAiming) {
		case true:
			dir = point_direction(x, y, mouse_x, mouse_y);
			break;
		case false:
			dir = point_direction(0, 0, right - left, down - up);
			break;
	}
	
	keys = right - left != 0 || down - up != 0;
	
	if(dir > 0 && dir < 180) {
		facing = "back";
	}
	if(dir > 180 && dir < 365) {
		facing = "front";
	}
	//Verifica se o player está andando na diagonal ou para os lados, e então coloca a variavle de isSide como true
	if(dir >= 0 && dir < 90 || dir > 90 && dir <= 180 || dir >= 180 && dir < 270 || dir > 270 && dir <= 360) {
		isSide = true;
		return;
	}
	if(!keys) {
		isSide = false;
	}
	
}

function getIndexForSprite() {
	if(!isSide) {
		if(facing == "front") {
			return 0;
		}
		if(facing == "back") {
			return 1;
		}
	}
	if(facing == "front") {
		return 2;
	}
	if(facing == "back") {
		return 3;
	}
}

function updatePlayerSprite() {
	fixPlayerSideSprite();
	updatePlayerDirection();
	var index = getIndexForSprite();
	if(sprite_index != stateSprites[state][subState][index]) {
		image_index = 0;
	}
	sprite_index = stateSprites[state][subState][index];
}