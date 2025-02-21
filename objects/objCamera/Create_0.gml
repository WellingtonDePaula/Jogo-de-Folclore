resolutionWidth = 1280;
resolutionHeight = 720;
resolutionScale = 3.5;

viewWidth = resolutionWidth / resolutionScale;
viewHeight = resolutionHeight / resolutionScale;

viewTarget = objPlayer;

window_set_size(viewWidth * resolutionScale, viewHeight * resolutionScale);
surface_resize(application_surface, viewWidth * resolutionScale, viewHeight * resolutionScale);
display_set_gui_size(viewWidth * resolutionScale, viewHeight * resolutionScale);
camera_set_view_size(view_camera[0], viewWidth, viewHeight);
window_center();

camX = 0;
camY = 0;
camSmoothness = .3;