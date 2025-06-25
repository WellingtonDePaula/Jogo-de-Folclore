draw_set_alpha(.2);
draw_rectangle(0, 0, x*2, y*2, false);
draw_set_alpha(1);

var _scale = global.scale;

draw_circle(x, y, radius, true);

draw_circle(xx, yy, circleScale*_scale, false);

draw_set_color(c_black);

for(var _i = 0; _i < array_length(targetsOn); _i ++) {
    var _target = targetsOn[_i];
    
    var _x = _target.x;
    var _y = _target.y;
    
    var _dir = -point_direction(_x, _y, x, y);
    var _angle = point_direction(x, y, _x, _y);
    var _w = _target.length * _scale;
    var _h = 20 * _scale;
    var _r = point_distance(x, y, _x, _y);
    var arc_angle = _w / _r * (180 / pi);

    draw_curved_strip(x, y, _r, _h, -_angle - arc_angle / 2, -_angle + arc_angle / 2, c_white);
}


draw_set_color(-1);


draw_text(80, 80, score);