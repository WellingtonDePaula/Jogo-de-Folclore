event_inherited();
if(state != undefined) {
	var execute = undefined;
	switch(stateMode) {
		#region NORMAL
		case PlayerMode.NORMAL:
			switch(state) {
				
				#region IDLE
				case PlayerStates.IDLE:
					execute = stateScripts.NORMAL.IDLE;
					break;
				#endregion
				
				//////////////////////////////////////////////////////////////////////////////////////////
				
				#region MOVING
				case PlayerStates.MOVING:
					execute = stateScripts.NORMAL.MOVING;
					break;
				#endregion
				
				//////////////////////////////////////////////////////////////////////////////////////////
				
				#region DASH
				case PlayerStates.DASH:
					execute = stateScripts.NORMAL.DASH;
					break;
				#endregion
				
			}
			break;
		#endregion
		
		//////////////////////////////////////////////////////////////////////////////////////////
		
		#region BUCKET
		case PlayerMode.BUCKET:
			switch(state) {
				
				#region IDLE
				case PlayerStates.IDLE:
					execute = stateScripts.BUCKET.IDLE;
					break;
				#endregion
				
				//////////////////////////////////////////////////////////////////////////////////////////
				
				#region MOVING
				case PlayerStates.MOVING:
					execute = stateScripts.BUCKET.MOVING;
					break;
				#endregion
				
				//////////////////////////////////////////////////////////////////////////////////////////
				
				#region DASH
				case PlayerStates.DASH:
					execute = stateScripts.BUCKET.DASH;
					break;
				#endregion
				
			}
			break;
		#endregion
		
		//////////////////////////////////////////////////////////////////////////////////////////
		
		#region BUCKET_AIMING
		case PlayerMode.BUCKET_AIMING:
			switch(state) {
				
				#region IDLE
				case PlayerStates.IDLE:
					execute = stateScripts.BUCKET_AIMING.IDLE;
					break;
				#endregion
				
				//////////////////////////////////////////////////////////////////////////////////////////
				
				#region MOVING
				case PlayerStates.MOVING:
					execute = stateScripts.BUCKET_AIMING.MOVING;
					break;
				#endregion
				
				//////////////////////////////////////////////////////////////////////////////////////////
				
				#region DASH
				case PlayerStates.DASH:
					execute = stateScripts.BUCKET_AIMING.DASH;
					break;
				#endregion
				
				//////////////////////////////////////////////////////////////////////////////////////////
				
				#region THROWING
				case PlayerStates.THROWING:
					execute = stateScripts.BUCKET_AIMING.THROWING;
					break;
				#endregion
				
			}
			break;
		#endregion
	}
	script_execute(execute);
}
move_and_collide(velh, velv, objCollider);

if(keyboard_check_pressed(ord("N"))) {
	stateMode = PlayerMode.BUCKET;
}
if(keyboard_check_pressed(ord("M"))) {
	stateMode = PlayerMode.NORMAL;
}