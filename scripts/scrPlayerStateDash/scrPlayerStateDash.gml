function scrPlayerStateDash() {
	stateDebug = "Dash";
	
	#region State Consequences
	
	isAiming = false;
	canInteract = false;
	static spriteChanged = false;
	
	#endregion
	
	#region Change States
	
	if(image_index >= image_number -1) {
		spriteChanged = false;
		changeState(stateMode, PlayerStates.IDLE, image_xscale);
		return;
	}
	
	#endregion
	
	#region Code

	velh =  velhDash - (velhDash/image_number) * image_index;
	velv = velvDash - (velvDash/image_number) * image_index;
	
	#endregion
	

	if(!spriteChanged) {
		inventoryRemoveAmount(inv, Ammo, 1);
		updatePlayerSprite();
		spriteChanged = true;
	}
}