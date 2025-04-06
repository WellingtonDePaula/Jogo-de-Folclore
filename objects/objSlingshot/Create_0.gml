event_inherited();

reloadTime = .01;

strenghtCharged = 0;
maxCharge = 2;

dir = 0;

resetCharge = function() {
	Alarm[0] = ALARM_INACTIVE;
	strenghtCharged = 0;
}

charge = function() {
	if(weaponId.state == PlayerStates.SHOOT) {
		Alarm[0] = ALARM_INACTIVE;
		return;
	}
	if(Alarm[0] == ALARM_INACTIVE) {
		Alarm[0] = reloadTime * FPS;
		return;
	}
}

shoot = function() {
	var playerAmmo = weaponId.ammo[Bullet.AMMO];
	if(strenghtCharged >= 1 && playerAmmo >= 1) {
		playerAmmo -= 1;
		weaponId.ammo[Bullet.AMMO] = playerAmmo;
		
		var bulletType = weaponId.ammo[Bullet.TYPE];
		var xx = weaponId.x;
		var yy = weaponId.y;
		
		var bullet = instance_create_layer(xx, yy, "Tools", bulletType);
		bullet.weaponId = weaponId;
	
		var bulletMultiplier = bullet.spdMultiplier
		bullet.spd = strenghtCharged * bulletMultiplier;
		
		bullet.direction = dir;
		bullet.image_angle = dir;
	}
	resetCharge();
}