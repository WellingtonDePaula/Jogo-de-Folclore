function scrPlayerStateAimingWalkingBucket() {
	stateDebug = "Bucket Aiming Walking";
	
	setCamState(global.cam, CameraStates.BETWEEN);
	
	#region State Consequences
	
	isAiming = true;
	
	#endregion
	
	#region Code
	
	var velocities = updatePlayerMovement(vel - .5, inputs);
	velh = velocities[0];
	velv = velocities[1];
	updatePlayerDirection();
	
	#endregion
	
	#region Change States
	
	if(!checkMoveInput(inputs)[0]) {
		subState = BucketSubState.AIMING_IDLE;
	}
	
	if(mouse_check_button_released(mb_right)) {
		subState = BucketSubState.IDLE;
	}
	
	#endregion
}