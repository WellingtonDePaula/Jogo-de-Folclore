function scrPlayerStateCutsceneGettingUp(){
	debugState = "Cutscene Getting Up";
	
	#region State Consequences
	
	isAiming = false;
	canInteract = false;
	isPaused = true;
	
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
	
	updatePlayerDirection();
	updatePlayerSprite();
	
	#endregion
}