function frameCutscene(_room, _sceneSprite, _sceneTime, _alpha, _minAlpha, _blackScreenTime, _fadeTime) constructor {
		targetRoom = _room;
		scene = [_sceneSprite, _sceneTime];
		fadeAtribbutes = {
			alpha: _alpha,
			minAlpha: _minAlpha,
			blackScreenTime: _blackScreenTime,
			fadeTime: _fadeTime,
		}
}