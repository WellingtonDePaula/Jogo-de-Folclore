event_inherited();
move_and_collide(velh, velv, objCollider);

if(keyboard_check_pressed(ord("N"))) {
	state = PlayerState.BUCKET;
	subState = BucketSubState.IDLE;
}
if(keyboard_check_pressed(ord("M"))) {
	state = PlayerState.NORMAL;
	subState = PlayerNormalSubState.IDLE;
}