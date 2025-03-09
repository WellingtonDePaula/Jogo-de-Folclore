event_inherited();

move_and_collide(velh, velv, objCollider);

if(keyboard_check_pressed(ord("R"))) {
	room_restart();
}