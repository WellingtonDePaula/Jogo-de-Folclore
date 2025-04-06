function scrPlayerStateUsingSlingshotMoving(){
	stateDebug = "Using Slingshot Moving";
	
	#region State Consequences
	
	isAiming = true;
	myWeapon.charge();
	
	#endregion
	
	#region Change States
	
	if(!checkMoveInput(inputs)[0]) {
		state = PlayerStates.IDLE;
		return;
	}
	
	if(keyboard_check_pressed(inputs.dash) && canDash) {
		stateMode = PlayerMode.NORMAL;
		state = PlayerStates.DASH;
		myWeapon.resetCharge();
		dash();
		return;
	}
	
	if(!mouse_check_button(inputs.shoot)) {
		if(myWeapon.strenghtCharged >= 1) {
			myWeapon.dir = point_direction(x, y, mouse_x, mouse_y);
			state = PlayerStates.SHOOT;
		} else {
			myWeapon.resetCharge();
			stateMode = PlayerMode.NORMAL;
			state = PlayerStates.IDLE;
		}
		image_index = 0;
		return;
	}
	
	#endregion
	
	#region Code
	
	var velocities = updatePlayerMovement(shootVel, inputs);
	velh = velocities[0];
	velv = velocities[1];
	updatePlayerDirection();
	updatePlayerSprite();
	
	#endregion

}