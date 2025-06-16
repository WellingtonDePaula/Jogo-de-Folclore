if(dir > 360) {dir = 0} else {
	if(dir < 0) {dir = 360}
}

//var _scale = global.scale;


xx = x + lengthdir_x(radius, dir);
yy = y + lengthdir_y(radius, dir);


var _dir_rad = degtorad(dir);

var _orbit_length = 2 * pi * radius;

var _linear_position = _dir_rad * radius;

// é como se o _linear_position fosse o x da bolinha do player no plano
// a _orbit_lenght é o tamanho intero da reta no plano

for(var _i = 0; _i < array_length(targets); _i ++) {
	var _target = targets[_i];
	
	if(_target.position > _orbit_length) {
		_target.position = 0;
	}
	
	//_target.position += 1;
	
	var _pos = _target.position;
	
	var _angle_rad = -_pos/radius;
	
	var _x_dist = radius * cos(_angle_rad);
	var _y_dist = radius * sin(_angle_rad);
	
	_target.x = x + _x_dist;
	_target.y = y + _y_dist;
	
	//show_debug_message([_pos, _linear_position + _target.length])
	//if(_pos <= _linear_position + _target.length/2 && _pos >= _linear_position - _target.length/2) {
	//	show_message("ta dentro");
	//}
	
	if(_pos <= _linear_position + _target.length/2 && _pos >= _linear_position - _target.length/2) {
		var _pressed = keyboard_check_pressed(vk_space);
		if(_pressed) {
			velDir = array_get(targets, _i).Pressed(velDir);
			array_delete(targets, _i, 1);
			rand_target(Target);
		}
	}
}

dir += velDir;