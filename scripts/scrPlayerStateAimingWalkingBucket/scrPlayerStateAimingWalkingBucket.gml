function scrPlayerStateAimingWalkingBucket() {
	stateDebug = "Bucket Aiming Walking";
	
	setCamState(global.cam, CameraStates.BETWEEN);
	
	#region Code
	
	var velocities = updateMovement(vel - .5, inputs);
	velh = velocities[0];
	velv = velocities[1];
	fixSideSprite();
	
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