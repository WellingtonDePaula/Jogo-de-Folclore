event_inherited();
if(state != undefined) {
	var execute = undefined;
	switch(stateMode) {
		#region NORMAL
		case PlayerMode.NORMAL:
			switch(state) {
				
				#region IDLE
				case PlayerState.IDLE:
					execute = stateScripts.NORMAL.IDLE;
					break;
				#endregion
				
				//////////////////////////////////////////////////////////////////////////////////////////
				
				#region MOVING
				case PlayerState.MOVING:
					execute = stateScripts.NORMAL.MOVING;
					break;
				#endregion
				
				//////////////////////////////////////////////////////////////////////////////////////////
				
				#region DASH
				case PlayerState.DASH:
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
				case PlayerState.IDLE:
					execute = stateScripts.BUCKET.IDLE;
					break;
				#endregion
				
				//////////////////////////////////////////////////////////////////////////////////////////
				
				#region MOVING
				case PlayerState.MOVING:
					execute = stateScripts.BUCKET.MOVING;
					break;
				#endregion
				
				//////////////////////////////////////////////////////////////////////////////////////////
				
				#region DASH
				case PlayerState.DASH:
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
				case PlayerState.IDLE:
					execute = stateScripts.BUCKET_AIMING.IDLE;
					break;
				#endregion
				
				//////////////////////////////////////////////////////////////////////////////////////////
				
				#region MOVING
				case PlayerState.MOVING:
					execute = stateScripts.BUCKET_AIMING.MOVING;
					break;
				#endregion
				
				//////////////////////////////////////////////////////////////////////////////////////////
				
				#region DASH
				case PlayerState.DASH:
					execute = stateScripts.BUCKET_AIMING.DASH;
					break;
				#endregion
				
				//////////////////////////////////////////////////////////////////////////////////////////
				
				#region THROWING
				case PlayerState.THROWING:
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