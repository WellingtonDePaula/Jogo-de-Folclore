event_inherited();

reloadTime = .03;

strenghtCharged = 0;
maxCharge = 2;

spdMultiplier = 1;

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
	if(strenghtCharged >= 1) {
		var xx = weaponId.x;
		var yy = weaponId.y;
		
		var bullet = instance_create_layer(xx, yy, "Tools", objRock);
		bullet.weaponId = weaponId;
	
		var dir = point_direction(xx, yy, mouse_x, mouse_y);
		var bulletMultiplier = bullet.spdMultiplier
		bullet.spd = spdMultiplier * (strenghtCharged / bulletMultiplier);
		
		bullet.direction = dir;
		bullet.image_angle = dir;
	}
	resetCharge();
}