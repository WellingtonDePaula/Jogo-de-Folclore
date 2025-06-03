function scrPlayerStateGettingUp() {
	stateDebug = "Getting Up";
	
	#region State Consequences
	
	isAiming = false;
	canInteract = false;
	static spriteChanged = false;
	image_speed = .5;
	
	#endregion
	
	#region Change States
	
	if(image_index >= image_number -1) {
		image_index = image_number-1;
		spriteChanged = false;
		image_speed = 1;
		changeState(stateMode, PlayerStates.IDLE, image_xscale);
		return;
	}
	
	#endregion
	
	#region Code
	
	#endregion

	if(!spriteChanged) {
		updatePlayerSprite();
		spriteChanged = true;
	}
}