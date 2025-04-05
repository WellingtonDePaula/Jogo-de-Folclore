function scrPlayerStateUsingSlingshotShoot(){
	stateDebug = "Using Slingshot Shoot";
	
	#region State Consequences
	
	isAiming = true;
	
	#endregion
	
	#region Change States
	
	if(image_index >= image_number -1) {
		stateMode = PlayerMode.NORMAL;
		state = PlayerStates.IDLE;
	}
	
	#endregion
	
	#region Code
	
	#endregion

}