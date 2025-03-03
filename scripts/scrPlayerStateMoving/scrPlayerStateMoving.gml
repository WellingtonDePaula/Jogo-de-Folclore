function scrPlayerStateMoving(){
	stateDebug = "Moving";
	
	setCamState(global.cam, CameraStates.FOLLOW);
	
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
	
	if(!checkMoveInput(inputs)[0]) {
		state = PlayerStates.IDLE;
	}
	
	if(keyboard_check_pressed(inputs.dash) && canDash) {
		dash();
		state = PlayerStates.DASH;
	}
	
	#endregion
}