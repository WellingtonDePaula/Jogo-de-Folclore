if(!showingDialog) {
	if(dialog.count() <= 0) {
		dialog.finish();
		instance_destroy();
		return;
	}
	
	currentDialog = dialog.pop();
	showingDialog = true;
} else {
	if(keyboard_check_pressed(keyNext)) {
		showingDialog = false;
		alpha = 0;
	}
}