xx = 0;
yy = 0;

x = display_get_gui_width()/2;
y = display_get_gui_height()/2;

radius = 20;
radius = radius * 10;

dir = 0;
velDir = 1;

circleScale = 20;

score = 0;
maxScore = 0;

var _orbit_length = 2 * pi * radius;

var _dir_rad = degtorad(45);

var _linear_position = _dir_rad * radius;

rand_target = function() {
	var _rand_pos = random_range(0, 2 * pi * radius);
	
	var _target = new Target(_rand_pos, 50);
	
	array_push(targets, _target);
}

targets = [
	new Target(_linear_position, 50),
	//new Target(_orbit_length/2, 50),
];