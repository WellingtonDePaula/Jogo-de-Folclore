#region background

var _color = make_color_rgb(128, 128, 128);

draw_set_color(_color);

draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

draw_set_color(-1);

#endregion

var _scale = global.scale * 16;

for(var _i = 0; _i < array_length(environment); _i++) {
	var obj = array_get(environment, _i);
	
	var _objScale = _scale + obj.scale;
	
	draw_sprite_ext(obj.sprite, obj.image_index, obj.x, obj.y, _objScale, _objScale, obj.image_angle, c_white, 1);
	//draw_rectangle(obj.bbox_left, obj.bbox_top, obj.bbox_right, obj.bbox_bottom, false);
}

for(var _i = 0; _i < array_length(objects); _i++) {
	var obj = array_get(objects, _i);
	
	var _objScale = _scale + obj.scale;
	
	draw_rectangle(obj.bbox_left, obj.bbox_top, obj.bbox_right, obj.bbox_bottom, false);

	draw_sprite_ext(obj.sprite, obj.image_index, obj.x, obj.y, _objScale, _objScale, obj.image_angle, c_white, 1);
}

arm.x = device_mouse_x_to_gui(0);
arm.y = device_mouse_y_to_gui(0);

draw_sprite_ext(arm.sprite, arm.image_index, arm.x, arm.y, _scale, _scale, arm.image_angle, c_white, 1);