event_inherited();

var _displayWidth = display_get_gui_width();
var _displayHeight = display_get_gui_height();

var _scale = global.scale * 16;

var _sprite = sprKey;
var _spriteWidth = sprite_get_width(_sprite) * _scale;
var _spriteHeight = sprite_get_height(_sprite) * _scale;

var _finalY = _displayHeight - _spriteHeight/2;
var _finalX = _displayWidth / 2;

var _obj1 = new MinigameObject(_finalX, _finalY, _sprite);

array_push(objects, _obj1);

finalX = _displayWidth / 2;
finalY = _displayHeight / 2 - 100;

keyHole = new MinigameKeyHole(finalX, finalY, sprKeyHole);

array_push(environment, keyHole);

minigame = undefined;