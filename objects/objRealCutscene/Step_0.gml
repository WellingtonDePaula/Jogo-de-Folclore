if(steps != undefined) {
	var finished = [];
	if(current < array_length(steps)) {
		for(var i = 0; i < array_length(steps[current]); i++) {
			var step = steps[current][i];
			var entity = step.entity;
			
			if(step.state != undefined) {
				var _mode = step.state.mode;
				var _state = step.state.state;
			
				with(entity) {
					if(_mode != undefined && _state != undefined) {
						stateMode = _mode;
						state = _state;
					}
				}
			}
			if(step.finished && !entity.isPaused) {
				finished[i] = true;
				entity.velh = 0;
				entity.velv = 0;
				if(step.state != undefined) {
					var _mode = step.state.defaultMode;
					var _state = step.state.defaultState;
					with(entity) {
						if(_mode != undefined && _state != undefined) {
							stateMode = _mode;
							state = _state;
						}
					}
				}

				continue
			}
			finished[i] = false;
			entity.cutsceneRunning = true;
			
			if(Alarm[i] == ALARM_INACTIVE) {
				if (!array_contains(index, i)) {
					setPos(step, entity);
					Alarm[i] = step.time * FPS;
					array_push(index, i);
				}
			}
			if(!entity.isPaused) {
				entity.velh = lengthdir_x(step.vel, step.dir);
				entity.velv = lengthdir_y(step.vel, step.dir);
			}
		}
		//show_debug_message(finished);
		if(!array_contains(finished, false)) {
			current ++;
			index = [];
		}
	} else {
		for(var i = 0; i < array_length(steps); i++) {
			for(var j = 0; j < array_length(steps[i]); j++) {
				var step = steps[i][j];
				step.entity.cutsceneRunning = false;
				step.finished = false;
			}
		}
		instance_destroy();
	}
}