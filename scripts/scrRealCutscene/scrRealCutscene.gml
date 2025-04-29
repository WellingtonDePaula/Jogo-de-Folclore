function realEntity(_object, _vel, _dir, _time, _x = undefined, _y = undefined, _func = undefined, _args = []) constructor {
    entity = _object;
    x = _x;
    y = _y;
    time = _time;
    func = _func;
    funcArguments = _args;
    vel = _vel;
	dir = _dir;
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