draw_set_alpha(.2);
draw_rectangle(0, 0, x*2, y*2, false);
draw_set_alpha(1);

var _scale = global.scale;

draw_circle(x, y, radius, true);

draw_circle(xx, yy, circleScale*_scale, false);

draw_set_color(c_black);

for(var _i = 0; _i < array_length(targets); _i ++) {
	var _target = targets[_i];
	
	var _x = _target.x;
	var _y = _target.y;
	
	var _dir = -point_direction(_x, _y, x, y);
	
	var _h = 20;
	
	var _w = _target.length;
	
	
	draw_rotated_rect(_x, _y, _h * _scale, _w * _scale, _dir, c_white);
}


draw_set_color(-1);
