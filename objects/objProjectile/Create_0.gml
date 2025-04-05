weaponId = noone;
damage = 0;
spdMultiplier = 0;
spd = 0;

verifyDestroy = function() {
	var spriteWidth = sprite_get_width(sprite_index);
	var spriteHeight = sprite_get_height(sprite_index);
	if(x < -spriteWidth || x > room_width + spriteWidth || y < 0 - spriteHeight || y > room_height + spriteHeight) {
		instance_destroy();
		return;
	}
}