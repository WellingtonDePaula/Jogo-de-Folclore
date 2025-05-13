function scrPlayerStateUsingSlingshotShoot(){
	stateDebug = "Using Slingshot Shoot";
	
	#region State Consequences
	
	velh = 0;
	velv = 0;
	canInteract = false;
	
	#endregion
	
	#region Change States
	
	if(image_index >= image_number -1) {
		myWeapon.shoot();
		isPaused = false;
		stateMode = PlayerMode.NORMAL;
		state = PlayerStates.IDLE;
	}
	
	#endregion
	
	#region Code
	
	#endregion

}