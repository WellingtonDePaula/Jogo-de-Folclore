function Dialogue() constructor {
	_dialogs = [];
	
	for(var i = 0; i < argument_count; i++) {
		if(!object_is_ancestor(argument[i], objEntity)) {
			show_debug_message("---------------------------------------------------------------");
			show_debug_message("O participante informado não é um objEntity");
			show_debug_message(debug_get_callstack());
			show_debug_message("---------------------------------------------------------------");
			continue;
		}
		argument[i].isPaused = true;
		participants[i] = argument[i];
	}
	
	add = function(_sprite, _message) {
		array_push(_dialogs, {
			sprite: _sprite,
			message: _message,
		});
	}
	
	pop = function() {
		var _t = array_first(_dialogs);
		array_delete(_dialogs, 0, 1);
		
		return _t;
	}
	
	count = function() {
		return array_length(_dialogs);
	}
	
	finish = function() {
		for(var i = 0; i < array_length(participants); i++) {
			participants[i].isPaused = false;
		}
	}
}