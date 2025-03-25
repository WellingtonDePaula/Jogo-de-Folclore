baseW = 1920;
baseH = 1080;

scaleX = display_get_gui_width() / baseW;
scaleY = display_get_gui_height() / baseH;
global.scale = min(scaleX, scaleY);