var _videoData = video_draw();
var _videoStatus = _videoData[0];
if(_videoStatus == 0) {
	draw_surface_stretched(_videoData[1], 0, 0, display_get_gui_width(), display_get_gui_height());
	drawing = true;
	exit;
}
instance_destroy();