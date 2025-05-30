function scrPlayerStateCutsceneGettingUp(){
	stateDebug = "Cutscene Getting Up";
	
	#region State Consequences
	
	isAiming = false;
	canInteract = false;
	isPaused = true;
	
	#endregion
	

	
	#region Code
	
	updatePlayerDirection();
	updatePlayerSprite();
	
	

	#endregion
	
	#region Change States
	
	if(image_index >= image_number -1) {
		isPaused = false;
		return;
	}
	
	#endregion
}