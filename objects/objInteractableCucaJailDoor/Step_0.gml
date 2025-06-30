// Inherit the parent event
event_inherited();

if(sprite_index) {
	var _x1 = x-1;
	var _y1 = y-1;
	var _x2 = x + sprite_get_width(sprite_index)+1;
	var _y2 = y + sprite_get_height(sprite_index)+1;
	
	if(point_in_rectangle(interactId.x, interactId.y, _x1, _y1, _x2, _y2)) {
		image_alpha = .5;
	} else {
		image_alpha = 1;
	}
}

var _inv = interactId.inv;

switch(actions[0]) {
	case "ABERTA":
		if(interacted) {
			room_goto(rmJailHall);
		}
		break;
	
	case "FECHADA":
		if(interacted) {
			if(inventoryItemAmount(_inv, Key) > 0) {
				minigame = instance_create_layer(0, 0, "GameController", objMinigameKeyHole);
				minigame.requestBy = self;
			} else {
				show_message("Precisa ter a chave bundao");
			}
		}

		if(minigameReturn != undefined) {
			script_execute(minigameReturn);
			array_delete(actions, 0, 1);
			minigameReturn = undefined;
		}
		break;
}