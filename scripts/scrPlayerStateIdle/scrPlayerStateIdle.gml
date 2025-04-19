function scrPlayerStateIdle(){
	stateDebug = "Idle";
	
	#region State Consequences
	
	velh = 0;
	velv = 0;
	
	#endregion
	
	#region Change States
	
	if(checkMoveInput(inputs)[0]) {
		state = PlayerStates.MOVING;
		return;
	}
	
	if(keyboard_check_pressed(inputs.dash) && canDash) {
		state = PlayerStates.DASH;
		dash();
		return;
	}
	
	if(mouse_check_button(inputs.shoot) && myWeapon != noone && inventoryItemAmount(inv, Ammo) > 0) {
		stateMode = PlayerMode.USING_SLINGSHOT;
		return;
	}
	
	#endregion
	
	#region Code
	
	updatePlayerDirection();
	updatePlayerSprite();
	
	#endregion
}