weaponId = noone;

damage = 0;

scale = 3;
image_xscale = scale;
image_yscale = scale;

spdMultiplier = 0;
spd = 0;

mass = 0;

colliders = [];
onColFuncs = [];

velh = 0;
velv = 0;

state = scrProjectileStateMoving;
debugState = "";

speedDecay = 0.02;

onCollision = function(destroy) {
	for(var i = 0; i < array_length(onColFuncs); i++) {
		script_execute(onColFuncs[i]);
	}
	if(destroy){
		instance_destroy();
	}
}

closestAngle = function(angle, firstAngle, secondAngle) {
    // Garante que o ângulo esteja entre 0 e 360
    angle = angle mod 360;

    var distToFirstAngle = abs(angle - secondAngle);
    var distToSecondAngle = abs(angle - firstAngle);

    if (distToSecondAngle < distToFirstAngle) {
        return firstAngle;
    } else {
        return secondAngle;
    }
}

verifyCollision = function(destroy) {
	if(destroy) {
		x += velh;
		y += velv;
	} else {
		move_and_collide(velh, velv, colliders);
	}
	for(var i = 0; i < array_length(colliders); i++) {
		var obj = colliders[i];
		var col = instance_place(x, y, obj);
		if(col) {
			onCollision(destroy);
			return;
		}
	}
	
	var spriteWidth = sprite_get_width(sprite_index);
	var spriteHeight = sprite_get_height(sprite_index);
	if(x < -spriteWidth || x > room_width + spriteWidth || y < 0 - spriteHeight || y > room_height + spriteHeight) {
		onCollision(destroy);
		return;
	}
}