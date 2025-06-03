if(instance_number(objDialogParent) > 1) {
	instance_destroy();
}

interactObjectId = undefined;

nextDialog = undefined;

endFunction = function(){};

dialog = undefined;

objPlayer.stop();

keyNext = vk_space;

showingDialog = false;

currentDialog = {};

alpha = 0; 