function scrPlayerStateCrying(){
	stateDebug = "Crying";
	
	#region State Consequences
	
	isAiming = false;
	canInteract = false;
	
	#endregion
	
	#region Change States
	
	
	if(!isPaused) {
		if(keyboard_check_pressed(vk_anykey)) {
			changeState(stateMode, PlayerStates.GETTING_UP, image_xscale);
			return;
		}
	}
	
	#endregion
	
	#region Code
	
	updatePlayerDirection();
	updatePlayerSprite();
	
	#endregion
}