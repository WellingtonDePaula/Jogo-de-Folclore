function realEntity(_entity, _direction, _vel, _time) constructor {
	entity = _entity;
	dir = _direction;
	vel = _vel;
	time = _time;
	finished = false;
}

function realScene() {
	var result = [];
	for(i = 0; i < argument_count; i++) {
		//show_message(argument[i]);
		array_push(result, argument[i]);
	}
	//show_message(result);
	return result;
}

function realCutscene() {
	var result = [];
	for(i = 0; i < argument_count; i++) {
		//show_message(argument[i]);
		array_push(result, argument[i]);
	}
	return result;
}