function scrPlayerStateCutsceneMoving(){
	stateDebug = "Cutscene Moving";
	
	#region State Consequences
	
	isAiming = false;
	canInteract = false;
	
	#endregion
	
	#region Code
	
	updatePlayerDirection();
	updatePlayerSprite();
	
	#endregion

}