#region Menu


#region Kernal

option1 = {
	text: "Jogar",
	func: function() {
		room_goto(rmGame);
	}
}
	
option2 = {
	text: "Sair",
	func: function() {
		game_end();
	}
}

menu = [option1, option2];

inputs = {
	down: vk_down,
	up: vk_up,
	select: vk_enter,
}

selected = 0;

#endregion

#region Appearance

distBetweenOption = 30;

#endregion

#endregion