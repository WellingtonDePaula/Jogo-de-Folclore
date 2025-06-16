var _holding = mouse_check_button(mb_left);
var _scale = global.scale * 16;

for(var _i = 0; _i < array_length(objects); _i++) {
	array_get(objects, _i).updateBbox(_scale);
}
for(var _i = 0; _i < array_length(environment); _i++) {
	array_get(environment, _i).updateBbox(_scale);
}

switch(arm.state) {
	case "holdingItem":
		if(arm.holding == undefined) {break}
		arm.image_index = 1;
		arm.holding.x = arm.x;
		arm.holding.y = arm.y;
		if(!_holding) {
			arm.holding.state = "free";
			arm.holding = undefined;
			arm.state = "free";
		}
		break;
	
	case "holding":
		arm.image_index = 1;
		
		for(var _i = 0; _i < array_length(objects); _i++) {
			var obj = array_get(objects, _i);
			
			var _col = rectangle_in_circle(obj.bbox_left, obj.bbox_top, obj.bbox_right, obj.bbox_bottom, arm.x, arm.y, _scale);
			if(_col && array_get(objects, _i).state == "free") {
				arm.holding = array_get(objects, _i);
				arm.holding.state = "beingHolded";
				
				arm.state = "holdingItem";
				
				exit;
			}
		}
		if(!_holding) {
			arm.holding = undefined;
			arm.state = "free";
		}
		break;
	
	case "free":
		arm.image_index = 0;
		if(_holding) {
			arm.state = "holding";
		}
		break;
}