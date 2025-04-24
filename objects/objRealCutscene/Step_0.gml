if(steps != undefined) {
	var finished = [];
	if(current < array_length(steps)) {
		for(var i = 0; i < array_length(steps[current]); i++) {
			var step = steps[current][i];
			
			if(step.finished) {
				finished[i] = true;
				continue
			}
			finished[i] = false;
		
			if(Alarm[i] == ALARM_INACTIVE) {
				Alarm[i] = step.time * FPS;
				array_push(index, i);
			}
			
			var entity = step.entity;
			entity.x += lengthdir_x(step.vel, step.dir);
			entity.y += lengthdir_y(step.vel, step.dir);
		}
		show_debug_message(finished);
		if(!array_contains(finished, false)) {
			current ++;
		}
	} else {
		for(var i = 0; i < array_length(steps); i++) {
			for(var j = 0; j < array_length(steps[i]); j++) {
				var step = steps[i][j];
				step.finished = false;
			}
		}
		instance_destroy();
	}
}