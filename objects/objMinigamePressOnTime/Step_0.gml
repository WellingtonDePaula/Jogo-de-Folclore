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

for(var _i = 0; _i < array_length(targetsOn); _i ++) {
	var _target = targetsOn[_i];
	
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
	var _pressed = keyboard_check_pressed(vk_space);
	if(_pressed) {
		if(_pos <= _linear_position + _target.length/2 && _pos >= _linear_position - _target.length/2) {
			velDir = array_get(targetsOn, _i).Pressed(velDir);
			errors = 0;
			score = clamp(score + 1, 0, maxScore);
			array_delete(targetsOn, _i, 1);
			if(ds_list_size(targets) > 0) {
				target_create();
			}
		} else {
			errors = clamp(errors + 1, 0, maxErrors);
			score = clamp(score - 1, 0, maxScore);
		}
	}
}

dir += velDir;

if(score >= maxScore) {
	minigameFather.minigameFinished = true;
	instance_destroy();
}