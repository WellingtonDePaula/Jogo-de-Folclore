function MinigameObject(_x, _y, _sprite) constructor {
	x = _x;
	y = _y;
	
	sprite = _sprite;
	
	image_angle = 0;
	angleToAdd = 0;
	
	image_index = 0;
	
	bbox_left = x - sprite_get_bbox_left(sprite);
	bbox_top = y - sprite_get_bbox_top(sprite);
	bbox_right = x + sprite_get_bbox_right(sprite);
	bbox_bottom = y + sprite_get_bbox_bottom(sprite);
	
	state = "free";
	
	static updateBbox = function(_scale) {
		var _xoffset = sprite_get_xoffset(sprite);
		var _yoffset = sprite_get_yoffset(sprite);
		
		var _xoffset2 = sprite_get_width(sprite) - _xoffset;
		var _yoffset2 = sprite_get_height(sprite) - _yoffset;
		
		bbox_left = x - _xoffset * _scale;
		bbox_top = y - _yoffset * _scale;
		bbox_right = x + _xoffset2 * _scale;
		bbox_bottom = y + _yoffset2 * _scale;
	}
}

//function Ammo(_obj,  _amount, _maxAmount) : Item(_obj,  _amount, _maxAmount) constructor {}
function MinigamePlayerArm(_x, _y, _sprite) : MinigameObject(_x, _y, _sprite) constructor {
	holding = undefined;
}

function MinigameKeyHole(_x, _y, _sprite) : MinigameObject(_x, _y, _sprite) constructor {}

function Target(_position, _length) constructor {
	position = _position;
	length = _length;
	hitted = false;
	
	x = 0;
	y = 0;
}