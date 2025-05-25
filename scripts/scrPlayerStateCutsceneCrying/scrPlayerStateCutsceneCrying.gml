function scrPlayerStateCutsceneCrying(){
	debugState = "Cutscene Crying";
	
	#region State Consequences
	
	isAiming = false;
	canInteract = false;
	
	#endregion
	
	#region Change States
	
	#endregion
	
	#region Code
	
	updatePlayerDirection();
	updatePlayerSprite();
	
	#endregion
}