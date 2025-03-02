function scrPlayerStateWalkingBucket(){
	stateDebug = "Bucket Walking";
	
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
		subState = PlayerBucketSubState.IDLE;
	}
	
	if(mouse_check_button_pressed(inputs.aim)) {
		subState = PlayerBucketSubState.AIMING_IDLE;
	}
	
	if(keyboard_check_pressed(inputs.dash) && canDash) {
		dash();
	}
	
	#endregion
}