if(keyboard_check_pressed(ord("P"))) {
	instance_destroy();
}

if(toExec != undefined) {
	if(!executed && drawing) {
		for(var _i = 0; _i < array_length(toExec); _i++) {
			var _obj = script_execute_ext(toExec[_i], args[_i]);
			_obj.visible = false;
			array_push(objCreated, _obj);
		}
		executed = true;
	}
}