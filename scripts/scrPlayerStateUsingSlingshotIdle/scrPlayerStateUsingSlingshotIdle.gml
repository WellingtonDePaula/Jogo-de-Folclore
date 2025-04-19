function scrPlayerStateUsingSlingshotIdle(){
	stateDebug = "Using Slingshot Idle";
	
	#region State Consequences
	
	isAiming = true;
	myWeapon.charge();
	static charged = false;
	
	#endregion
	
	#region Change States
	
	if(checkMoveInput(inputs)[0]) {
		state = PlayerStates.MOVING;
		isAiming = false;
		return;
	}
	
	if(keyboard_check_pressed(inputs.dash) && canDash) {
		stateMode = PlayerMode.NORMAL;
		state = PlayerStates.DASH;
		isAiming = false;
		myWeapon.resetCharge();
		charged = false
		dash();
		return;
	}
	if(!mouse_check_button(inputs.shoot)) {
		if(myWeapon.strenghtCharged >= myWeapon.minStrenght) {
			myWeapon.dir = point_direction(x, y, mouse_x, mouse_y);
			isAiming = false;
			state = PlayerStates.SHOOT;
		} else {
			myWeapon.resetCharge();
			isAiming = false;
			stateMode = PlayerMode.NORMAL;
			state = PlayerStates.IDLE;
		}
		charged = false;
		image_index = 0;
		return;
	}
	
	#endregion
	
	#region Code
	
	if(!charged && image_index >= image_number -1) {
		charged = true;
	}
	
	var velocities = updatePlayerMovement(shootVel, inputs);
	velh = velocities[0];
	velv = velocities[1];
	updatePlayerDirection();
	updatePlayerSprite();
	
	if(charged) {
		image_index = image_number-1;
	}
	
	#endregion
}