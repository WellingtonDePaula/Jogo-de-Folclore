event_inherited();
var _script = stateScripts[stateMode][state];
if (_script != undefined) {
    script_execute(_script);
}
move_and_collide(velh, velv, objCollider);

if(keyboard_check_pressed(ord("N"))) {
	stateMode = PlayerMode.BUCKET;
}
if(keyboard_check_pressed(ord("M"))) {
	stateMode = PlayerMode.NORMAL;
}