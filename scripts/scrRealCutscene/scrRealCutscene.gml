function RealEntity(_object, _state, _vel, _dir, _time, _x = undefined, _y = undefined, _func = undefined, _args = []) constructor {
    entity = _object;
	state = _state;
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

function State(_mode, _state, _defaultMode, _defaultState) constructor {
	mode = _mode;
	state = _state;
	defaultMode = _defaultMode;
	defaultState = _defaultState;
}