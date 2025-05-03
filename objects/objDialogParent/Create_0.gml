if(instance_number(objDialogParent) > 1) {
	instance_destroy();
}

dialog = new Dialogue(objPlayer, objTest);

keyNext = vk_space;

showingDialog = false;

currentDialog = {};

alpha = 0; 