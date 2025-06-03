event_inherited();

nextDialog = objDialogSample;
endFunction = function() {
	global.cutsceneManager.startVideoCutscene(Cutscenes.VIDEO_CUCA_JAIL_GETTING_KEY);
	var _key = instance_create_layer(65, 20, "Environment", objKey);
}

dialog = new Dialogue(objPlayer, objTest);

dialog.add(sprKey, "Ei!");
dialog.add(sprKey, "Você");

dialog.add(sprPlayerCryingFront, "buaaa, buaaa");