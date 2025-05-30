function scrPlayerStateCutsceneMoving(){
	stateDebug = "Cutscene Moving";
	
	#region State Consequences
	
	isAiming = false;
	canInteract = false;
	
	#endregion
	
	#region Code
	
	var spriteSpeed = sprite_get_speed(sprite_index);
	image_speed = cutsceneVel/normalVel;
	show_debug_message(image_speed);
	
	updatePlayerDirection();
	updatePlayerSprite();
	
	#endregion

}