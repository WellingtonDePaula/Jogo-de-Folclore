if(instance_number(objDialogParent) > 1) {
	instance_destroy();
}

dialog = new Dialogue(objPlayer, objTest);

objPlayer.stop();

keyNext = vk_space;

showingDialog = false;

currentDialog = {};

alpha = 0; 