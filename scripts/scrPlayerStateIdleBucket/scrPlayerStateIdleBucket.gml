function scrPlayerStateIdleBucket(){
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
		subState = BucketSubState.WALKING;
	}
	
	if(mouse_check_button_pressed(mb_right)) {
		subState = BucketSubState.AIMING_IDLE;
	}
	
	#endregion
}