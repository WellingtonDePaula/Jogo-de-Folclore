#region background

var _color = make_color_rgb(128, 128, 128);

draw_set_color(_color);

draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

draw_set_color(-1);

#endregion

var _scale = global.scale * 16;

draw_sprite_ext(key.sprite, 0, key.x, key.y, _scale, _scale, 0, c_white, 1);

arm.x = device_mouse_x_to_gui(0);
arm.y = device_mouse_y_to_gui(0);

draw_sprite_ext(arm.sprite, 0, arm.x, arm.y, _scale, _scale, 0, c_white, 1);