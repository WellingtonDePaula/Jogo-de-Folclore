event_inherited();

strenghtCharged = 0;
maxCharge = 2;
minStrenght = .1;

dir = 0;

reloadTime = 0.02;

resetCharge = function() {
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
		if(other.strenghtCharged >= other.minStrenght && inventoryItemAmount(inv, Ammo) > 0) {
			inventoryRemoveAmout(inv, Ammo, 1);
			var ammoStruct = inventoryStruct(inv, Ammo);
		
			var bulletType = ammoStruct.obj;
			var xx = x;
			var yy = y;
		
			var bullet = instance_create_layer(xx, yy, "Tools", bulletType);
			bullet.weaponId = self;
	
			var bulletMass = bullet.mass;
			//bullet.spd = (other.strenghtCharged / bulletMass) +;
			bullet.spd = (other.strenghtCharged / bulletMass);
		
			bullet.direction = other.dir;
			bullet.image_angle = other.dir;
		}
	}
	resetCharge();
}