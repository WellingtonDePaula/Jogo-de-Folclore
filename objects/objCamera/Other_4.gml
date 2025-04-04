view_enabled = true;
view_visible[0] = true;

if(room == rmCucaJail) {
	staticX = room_width/2;
	staticY = room_height/2;
	setCamScale(global.cam, global.ScaleFactors.CUCA_JAIL);
	setCamState(self, CameraStates.STATIC);
}
if(room == rmTest) {
	setCamScale(global.cam, global.ScaleFactors.NORMAL);
	setCamState(self, CameraStates.FOLLOW);
}