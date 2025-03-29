function scrPlayerStateDash() {
	stateDebug = "Dash";
	
	setCamState(global.cam, CameraStates.FOLLOW);
	
	#region State Consequences
	
	isAiming = false;
	
	#endregion
	
	#region Code
	static spriteChanged = false;
	if(!spriteChanged) {
		updatePlayerSprite();
		spriteChanged = true;
	}
	velh =  velhDash - (velhDash/image_number) * image_index;
	velv = velvDash - (velvDash/image_number) * image_index;
	#endregion
	
	#region Change States
	
	if(image_index >= image_number -1) {
		spriteChanged = false;
		state = PlayerStates.IDLE;
	}
	
	#endregion
}