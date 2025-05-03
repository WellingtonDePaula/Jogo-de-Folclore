function scrPlayerStateDash() {
	stateDebug = "Dash";
	
	#region State Consequences
	
	isAiming = false;
	static spriteChanged = false;
	
	#endregion
	
	#region Change States
	
	if(image_index >= image_number -1) {
		spriteChanged = false;
		isPaused = false;
		state = PlayerStates.IDLE;
		return;
	}
	
	#endregion
	
	#region Code

	velh =  velhDash - (velhDash/image_number) * image_index;
	velv = velvDash - (velvDash/image_number) * image_index;
	
	#endregion
	

	if(!spriteChanged) {
		inventoryRemoveAmout(inv, Ammo, 1);
		updatePlayerSprite();
		spriteChanged = true;
	}
}