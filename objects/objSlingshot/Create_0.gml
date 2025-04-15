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
	with(weaponId) {
		if(other.strenghtCharged >= 1 && inventoryItemAmount(inv, Ammo) > 0) {
			inventoryRemoveAmout(inv, Ammo, 1);
			var ammoStruct = inventoryStruct(inv, Ammo);
		
			var bulletType = ammoStruct.obj;
			var xx = x;
			var yy = y;
		
			var bullet = instance_create_layer(xx, yy, "Tools", bulletType);
			bullet.weaponId = self;
	
			var bulletMultiplier = bullet.spdMultiplier;
			bullet.spd = other.strenghtCharged * bulletMultiplier;
		
			bullet.direction = other.dir;
			bullet.image_angle = other.dir;
		}
	}
	resetCharge();
}