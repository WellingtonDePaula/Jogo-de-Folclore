var _script = stateScripts[stateMode][state];
if (_script != undefined) {
    script_execute(_script);
}

depth = -bbox_bottom;

move_and_collide(velh * delta, velv * delta, objCollider);