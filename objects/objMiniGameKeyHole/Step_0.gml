event_inherited();

var _key = objects[0];
show_debug_message(_key.state)
switch(_key.state) {
	case "free":
		var _scale = global.scale * 16;
		var _col = point_in_circle(_key.x, _key.y, keyHole.x, keyHole.y, 5 * _scale);
		if(_key.image_angle < 175 || _key.image_angle > 185 || !_col) {break}
		_key.state = "attached";
		break;
	
	case "beingHolded":
		#region Rotate Key
		if(mouse_wheel_up()) {
			_key.angleToAdd -= 1;
		}
		if(mouse_wheel_down()) {
			_key.angleToAdd += 1;
		}
		_key.image_angle += _key.angleToAdd;
		//show_debug_message(_key.angleToAdd);
		_key.angleToAdd = lerp(_key.angleToAdd, 0, .1);
		//show_debug_message(_key.angleToAdd);
		#endregion
		break;
		
	case "attached":
		
		break;
}