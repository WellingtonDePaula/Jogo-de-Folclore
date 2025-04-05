function scrPlayerStateDash() {
	stateDebug = "Dash";
	
	#region State Consequences
	
	isAiming = false;
	
	#endregion
	
	#region Change States
	
	if(image_index >= image_number -1) {
		spriteChanged = false;
		state = PlayerStates.IDLE;
		return;
	}
	
	#endregion
	
	#region Code
	
	static spriteChanged = false;

	velh =  velhDash - (velhDash/image_number) * image_index;
	velv = velvDash - (velvDash/image_number) * image_index;
	
	#endregion
	

	if(!spriteChanged) {
		updatePlayerSprite();
		spriteChanged = true;
	}
}