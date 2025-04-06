weaponId = noone;
damage = 0;
spdMultiplier = 0;
spd = 0;
colliders = [];
onColFuncs = [];

enum Bullet {
	AMMO,
	TYPE,
}

onCollision = function() {
	for(var i = 0; i < array_length(onColFuncs); i++) {
		script_execute(onColFuncs[i]);
	}
	instance_destroy();
}

verifyCollision = function() {
	for(var i = 0; i < array_length(colliders); i++) {
		var obj = colliders[i];
		var col = instance_place(x, y, obj);
		if(col) {
			onCollision();
			return;
		}
	}
	
	var spriteWidth = sprite_get_width(sprite_index);
	var spriteHeight = sprite_get_height(sprite_index);
	if(x < -spriteWidth || x > room_width + spriteWidth || y < 0 - spriteHeight || y > room_height + spriteHeight) {
		onCollision();
		return;
	}
}