var step = steps[current][index[2]]
var entity = step.entity;

step.finished = true;
if(step.func != undefined) {
	if(!step.finished) {
	var dir = step.dir;
	var vel = step.vel;
	//show_message("a")
	step.func(step.funcArguments);
	step.finished = true;
	}
} else {
	step.finished = true;
}