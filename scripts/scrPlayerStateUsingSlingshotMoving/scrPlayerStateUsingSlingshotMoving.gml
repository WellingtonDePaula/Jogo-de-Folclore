function scrPlayerStateUsingSlingshotMoving(){
	stateDebug = "Using Slingshot Moving";
	
	#region State Consequences
	
	isAiming = true;
	canInteract = false;
	myWeapon.charge();
	static charged = false;
	
	#endregion
	
	#region Change States
	
	if(!checkMoveInput(inputs)[0]) {
		state = PlayerStates.IDLE;
		return;
	}
	
	if(keyboard_check_pressed(inputs.dash) && canDash) {
		myWeapon.resetCharge();
		charged = false;
		dash();
		return;
	}
	
	if(!mouse_check_button(inputs.shoot)) {
		if(myWeapon.strenghtCharged >= myWeapon.minStrenght) {
			myWeapon.dir = point_direction(x, y, mouse_x, mouse_y);
			changeState(stateMode, PlayerStates.SHOOT, image_xscale);
			return;
		} else {
			myWeapon.resetCharge();
			charged = false;
			image_index = 0;
			changeState(PlayerMode.NORMAL, PlayerStates.IDLE, image_xscale);
			return;
		}
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