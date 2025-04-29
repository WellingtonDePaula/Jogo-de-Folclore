function scrPlayerStateUsingSlingshotShoot(){
	stateDebug = "Using Slingshot Shoot";
	
	#region State Consequences
	
	velh = 0;
	velv = 0;
	
	#endregion
	
	#region Change States
	
	if(image_index >= image_number -1) {
		myWeapon.shoot();
		inAction = false;
		stateMode = PlayerMode.NORMAL;
		state = PlayerStates.IDLE;
	}
	
	#endregion
	
	#region Code
	
	#endregion

}