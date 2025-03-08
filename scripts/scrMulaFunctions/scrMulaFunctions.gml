function updateDistGrid() {
	mp_grid_clear_all(global.grid);

	if(instance_exists(targetId)) {
		var dist = 4;
		
		var x1 = targetId.x - global.cellSize * dist;
		var y1 = targetId.y - global.cellSize * dist;
		var x2 = targetId.x + global.cellSize * dist;
		var y2 = targetId.y + global.cellSize * dist;
		
		mp_grid_add_rectangle(global.grid, x1, y1,x2, y2);
		if(path_get_length(path) > 0) {
			path_end();
			moveToMouse();
		}
	}
}

function moveToPos() {
	if(mouse_check_button_pressed(mb_right)) {
		xToGo = mouse_x;
		yToGo = mouse_y;
	}
	if(mp_grid_path(global.grid, path, x, y, xToGo, yToGo, true)) {
		path_start(path, vel, path_action_stop, false);
	}
}