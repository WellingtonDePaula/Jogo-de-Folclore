var step = steps[current][index[0]]
var entity = step.entity;


if(step.func != undefined) {
	if(!step.finished) {
	var dir = step.dir;
	var vel = step.vel;
	//show_message("a")
	step.func(dir, vel);
	step.finished = true;
	}
} else {
	step.finished = true;
}