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

function updateMovement(vel, inputKeys) {
	var inputsUpdated, keys, moveDir
	
	inputsUpdated = checkMoveInput(inputs);
	keys = inputsUpdated[0];
	moveDir = inputsUpdated[1];
	
	var hSpeed, vSpeed;
	hSpeed = lengthdir_x(vel * keys, moveDir);
	vSpeed = lengthdir_y(vel * keys, moveDir);
	
	return [hSpeed, vSpeed];
}

function fixSideSprite() {
	if(velh != 0) {
		image_xscale = sign(velh);
	}
}

function updateSideAndFacing() {
	var right, left, down, up, dir, keys;
	
	right = keyboard_check(inputs.right);
	left = keyboard_check(inputs.left);
	down = keyboard_check(inputs.down);
	up = keyboard_check(inputs.up);
	
	dir = point_direction(0, 0, right - left, down - up);
	keys = right - left != 0 || down - up != 0;
	
	if(keys) {
		switch(dir) {
			case 0:
				isSide = true;
				break;
			case 45:
				isSide = true;
				facing = "back";
				break;
			case 90:
				isSide = false;
				facing = "back";
				break;
			case 135:
				isSide = true;
				facing = "back";
				break;
			case 180:
				isSide = true;
				break;
			case 225:
				isSide = true;
				facing = "front";
				break;
			case 270:
				isSide = false;
				facing = "front";
				break;
			case 315:
				isSide = true;
				facing = "front";
				break;
		}
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

function updateSprite() {
	var index = getIndexForSprite();
	sprite_index = stateSprites[state][subState][index];
}