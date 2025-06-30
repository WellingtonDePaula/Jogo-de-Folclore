if(!background) {
	depth = -bbox_bottom;
}
if(!global.gamePaused) {
	var x1 = bbox_left - distToInteract;
	var y1 = bbox_top - distToInteract;
	var x2 = bbox_right + distToInteract;
	var y2 = bbox_bottom + distToInteract;

	var xId = interactId.x;
	var yId = interactId.y;

	if(point_in_rectangle(xId, yId, x1, y1, x2, y2) && interactId.canInteract && canBeInteracted && canBeInteracted2) {
		interacted = keyboard_check_pressed(interactId.inputs.interact);
	}

	if(interacted) {
		show_debug_message("INTERAGIDO COM O OBJETO");
	}
}