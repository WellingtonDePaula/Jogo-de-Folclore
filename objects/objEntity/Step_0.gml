var _script = stateScripts[stateMode][state];
if (_script != undefined) {
    script_execute(_script);
}
velh = velh * delta;
velv = velv * delta;

depth = -bbox_bottom;

move_and_collide(velh, velv, objCollider);