function scrPlayerStateBucketIdle(){
	stateDebug = "Bucket Idle";
	
	setCamState(global.cam, CameraStates.BETWEEN);
	
	#region Code
	
	var velocities = updateMovement(vel, inputs);
	velh = velocities[0];
	velv = velocities[1];
	fixSideSprite();
	
	#endregion
	
	#region Change States
	
	if(checkMoveInput(inputs)[0]) {
		subState = BucketSubState.WALKING;
	}
	
	#endregion
}