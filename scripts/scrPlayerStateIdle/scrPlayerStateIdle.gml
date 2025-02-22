function scrPlayerStateIdle(){
	stateDebug = "Idle";
	
	setCamState(global.cam, CameraStates.FOLLOW);
	
	#region Code
	
	var velocities = updateMovement(vel, inputs);
	velh = velocities[0];
	velv = velocities[1];
	fixSideSprite();
	
	#endregion
	
	#region Change States
	
	if(checkMoveInput(inputs)[0]) {
		subState = NormalSubState.WALKING;
	}
	
	#endregion
}