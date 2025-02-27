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
	
	keys = right - left != 0 || down - up != 0;
	static dir = 0;
	
	switch(isAiming) {
		case true:
			dir = point_direction(x, y, mouse_x, mouse_y);
			var isSideTollerance = 35;
			if(mouse_x > x -25 && mouse_x < x + 25) {
				isSide = false;
				break;
			}
			isSide = true;
			break;
		case false:
			dir = point_direction(0, 0, right - left, down - up);
			if(keys) {
				if(dcos(dir) != 0) {
					isSide = true;
				} else {
					isSide = false;
				}
			}
			break;
	}
	
	if(dsin(dir) < 0) {
		facing = "front";
	}
	if(dsin(dir) > 0) {
		facing = "back";
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