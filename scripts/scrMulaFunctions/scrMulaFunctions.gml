function generateRandPoint() {
	var distToGo = 250;
	
	while(true) {
		xToGo = random_range(x - distToGo, x + distToGo);
		yToGo = random_range(y - distToGo, y + distToGo);
	
		if(point_in_rectangle(xToGo, yToGo, 0, 0, room_width, room_height)) {
			break;
		}
	}
}

function moveToPoint() {
	generateRandPoint();
	if(mp_grid_path(global.grid, movePath, x, y, xToGo, yToGo, true)) {
		path_start(movePath, vel, path_action_stop, false);
	}
}