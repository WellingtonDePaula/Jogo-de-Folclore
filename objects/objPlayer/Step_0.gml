event_inherited();
updateSideAndFacing();
updateSprite();

if(keyboard_check_pressed(ord("N"))) {
	state = PlayerState.BUCKET;
	subState = BucketSubState.IDLE;
}
if(keyboard_check_pressed(ord("M"))) {
	state = PlayerState.NORMAL;
	subState = NormalSubState.IDLE;
}