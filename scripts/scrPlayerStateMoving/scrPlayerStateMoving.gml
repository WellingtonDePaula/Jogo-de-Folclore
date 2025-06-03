function scrPlayerStateMoving(){
	stateDebug = "Moving";
	
	#region State Consequences
	
	isAiming = false;
	//canInteract = true;
	
	#endregion
	
	#region Change States
	
	if(velh == 0 && velv == 0) {
		changeState(stateMode, PlayerStates.IDLE, image_xscale);
		return;
	}
	
	if(!isPaused) {
		if(keyboard_check_pressed(inputs.dash) && canDash) {
			dash();
			return;
		}
	
		if(mouse_check_button(inputs.shoot) && myWeapon != noone && inventoryItemAmount(inv, Ammo) > 0) {
			changeState(PlayerMode.USING_SLINGSHOT, state, image_xscale);
			return;
		}
	}
	
	#endregion
	
	#region Code
	
	if(!isPaused) {
		var velocities = updatePlayerMovement(normalVel, inputs);
		velh = velocities[0];
		velv = velocities[1];
	}
	updatePlayerDirection();
	updatePlayerSprite();
	
	#endregion

}