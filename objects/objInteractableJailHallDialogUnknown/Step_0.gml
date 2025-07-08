event_inherited();

if(interacted) {
	var _dialog = instance_create_layer(0, 0, "GameController", currentDialog);
	_dialog.interactObjectId = self;
}