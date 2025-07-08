if(canBeInteracted3) {
	draw_self();

	var isIn = false;

	var _x1 = bbox_left - distToInteract;
	var _y1 = bbox_top - distToInteract;
	var _x2 = bbox_right + distToInteract;
	var _y2 = bbox_bottom + distToInteract;
	with(interactId) {
		isIn = point_in_rectangle(x, y, _x1, _y1, _x2, _y2);
	}

	if(instance_exists(interactId) && interactId.canInteract && canBeInteracted && canBeInteracted2 && !global.gamePaused) {
		if(isIn) {
			draw_sprite_ext(sprite_index, image_index, x, y, 1.1, 1.1, image_angle, c_white, .3);
		}
	}
}