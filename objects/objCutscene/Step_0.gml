if(instance_exists(manager)) {
	nextFrame();
}
if(alpha <= minAlpha) {
	instance_destroy();
	room_goto(roomTarget);
}