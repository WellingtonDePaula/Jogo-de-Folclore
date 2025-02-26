function scrPlayerStateWalking(){
	stateDebug = "Walking";
	
	setCamState(global.cam, CameraStates.FOLLOW);
	
	#region State Consequences
	
	isAiming = false;
	
	#endregion
	
	#region Code
	
	var velocities = updatePlayerMovement(vel, inputs);
	velh = velocities[0];
	velv = velocities[1];
	updatePlayerDirection();
	
	#endregion
	
	#region Change States
	
	if(!checkMoveInput(inputs)[0]) {
		subState = NormalSubState.IDLE;
	}
	
	#endregion
}