weaponId = noone;

damage = 0;

scale = 1;

spd = 0;

mass = 0;

velh = 0;
velv = 0;

state = scrProjectileStateMoving;
debugState = "";

speedDecay = 0.02;

bounces = 0;
maxBounces = 0;

bounce = function() {
	if(place_meeting(x + velh, y, objCollider)) {
		velh = -velh;
		direction = point_direction(x, y, x + velh, y + velv);
		bounces ++;
		return;
	}
	if(place_meeting(x, y + velv, objCollider)) {
		velv = -velv;
		direction = point_direction(x, y, x + velh, y + velv);
		bounces ++;
		return;
	}
}