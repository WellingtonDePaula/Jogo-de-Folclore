function scrPlayerStateIdle(){
	stateDebug = "Idle";
	
	#region State Consequences
	
	isAiming = false;
	
	#endregion
	
	#region Code
	
	var velocities = updatePlayerMovement(vel, inputs);
	velh = velocities[0];
	velv = velocities[1];
	updatePlayerDirection();
	updatePlayerSprite();
	
	#endregion
	
	#region Change States
	
	if(checkMoveInput(inputs)[0]) {
		state = PlayerStates.MOVING;
	}
	
	if(keyboard_check_pressed(inputs.dash) && canDash) {
		state = PlayerStates.DASH;
		dash();
	}
	
	#endregion
}