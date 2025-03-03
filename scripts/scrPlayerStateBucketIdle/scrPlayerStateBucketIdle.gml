function scrPlayerStateBucketIdle(){
	stateDebug = "Bucket Idle";
	
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
	
	if(checkMoveInput(inputs)[0]) {
		state = PlayerStates.MOVING;
	}
	
	if(mouse_check_button(inputs.aim)) {
		stateMode = PlayerMode.BUCKET_AIMING;
	}
	
	if(keyboard_check_pressed(inputs.dash) && canDash) {
		dash();
		state = PlayerStates.DASH;
	}
	
	#endregion
}