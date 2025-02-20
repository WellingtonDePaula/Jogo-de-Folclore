resolutionWidth = 1280;
resolutionHeight = 720;
resolutionScale = 2;

global.viewWidth = resolutionWidth / resolutionScale;
global.viewHeight = resolutionHeight / resolutionScale;
window_set_size(global.viewWidth*resolutionScale, global.viewHeight*resolutionScale);