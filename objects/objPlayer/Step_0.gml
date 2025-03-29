event_inherited();

if(keyboard_check_pressed(ord("N"))) {
	stateMode = PlayerMode.BUCKET;
}
if(keyboard_check_pressed(ord("M"))) {
	stateMode = PlayerMode.NORMAL;
}