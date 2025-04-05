function scrPlayerStateIdle(){
	stateDebug = "Idle";
	
	#region State Consequences
	
	isAiming = false;
	
	#endregion
	
	#region Change States
	
	if(checkMoveInput(inputs)[0]) {
		state = PlayerStates.MOVING;
		return;
	}
	
	if(keyboard_check_pressed(inputs.dash) && canDash) {
		state = PlayerStates.DASH;
		dash();
		return;
	}
	
	if(mouse_check_button(inputs.shoot) && myWeapon != noone) {
		stateMode = PlayerMode.USING_SLINGSHOT;
		return;
	}
	
	#endregion
	
	#region Code
	
	var velocities = updatePlayerMovement(normalVel, inputs);
	velh = velocities[0];
	velv = velocities[1];
	updatePlayerDirection();
	updatePlayerSprite();
	
	#endregion
}