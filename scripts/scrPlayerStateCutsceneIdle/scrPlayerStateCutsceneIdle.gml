function scrPlayerStateCutsceneIdle(){
	stateDebug = "Cutscene Idle";
	
	#region State Consequences
	
	isAiming = false;
	canInteract = false;
	
	#endregion
	
	#region Code
	
	updatePlayerDirection();
	updatePlayerSprite();
	
	#endregion
}