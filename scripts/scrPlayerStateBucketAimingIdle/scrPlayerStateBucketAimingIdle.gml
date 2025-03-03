function scrPlayerStateBucketAimingIdle() {
	stateDebug = "Bucket Aiming Idle";
	
	setCamState(global.cam, CameraStates.BETWEEN);
	
	#region State Consequences
	
	isAiming = true;
	
	#endregion
	
	#region Code
	
	var velocities = updatePlayerMovement(velAiming, inputs);
	velh = velocities[0];
	velv = velocities[1];
	updatePlayerDirection();
	updatePlayerSprite();
	
	#endregion
	
	#region Change States
	
	if(checkMoveInput(inputs)[0]) {
		subState = PlayerBucketSubState.AIMING_WALKING;
	}
	
	if(mouse_check_button_released(inputs.aim)) {
		subState = PlayerBucketSubState.IDLE;
	}
	
	if(keyboard_check_pressed(inputs.dash) && canDash) {
		dash();
	}
	
	#endregion
}