function scrPlayerStateMoving(){
	stateDebug = "Moving";
	
	#region State Consequences
	
	isAiming = false;
	canInteract = true;
	
	#endregion
	
	#region Change States
	
	if(velh == 0 && velv == 0) {
		state = PlayerStates.IDLE;
		return;
	}
	
	if(!cutsceneRunning && !isPaused) {
		if(keyboard_check_pressed(inputs.dash) && canDash) {
			canInteract = false;
			dash();
			return;
		}
	
		if(mouse_check_button(inputs.shoot) && myWeapon != noone && inventoryItemAmount(inv, Ammo) > 0) {
			stateMode = PlayerMode.USING_SLINGSHOT;
			return;
		}
	}
	
	#endregion
	
	#region Code
	
	if(!cutsceneRunning && !isPaused) {
		var velocities = updatePlayerMovement(normalVel, inputs);
		velh = velocities[0];
		velv = velocities[1];
	}
	updatePlayerDirection();
	updatePlayerSprite();
	
	#endregion

}