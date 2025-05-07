draw_self();

if(instance_exists(interactId)) {
	var x1 = bbox_left - distToInteract;
	var y1  = bbox_top - distToInteract;
	var x2 = bbox_right + distToInteract;
	var y2 = bbox_bottom + distToInteract;
	
	draw_set_alpha(.7);
	draw_rectangle(x1, y1, x2, y2, false);
	draw_set_alpha(1);
	
	with(interactId) {
		if(!point_in_rectangle(x, y, x1, y1, x2, y2)) {
			return;
		}
	}
	
	var width = sprite_get_width(sprite_index);
	var height = sprite_get_height(sprite_index);
	
	var xx = x;
	var yy = y - height;
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_text(xx, yy, chr(interactId.inputs.interact));
	draw_set_halign(-1);
	draw_set_valign(-1);
}