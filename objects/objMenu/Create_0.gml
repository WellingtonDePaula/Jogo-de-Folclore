#region Menu

#region Kernal

mainOptions = {
		option1: {
		text: "Jogar",
		func: function() {
			room_goto(rmGame);
		}
	},
	
	option2: {
		text: "Opcoes",
		func: function() {
			with(objMenu) {
				lastMenu = currentMenu;
				currentMenu = configMenu;
				selected = 0;
			}
		}
	},
	
	option3: {
		text: "Sair",
		func: function() {
			game_end();
		}
	},
}
configOptions = {
	option1: {
		text: "1280X720",
		func: function() {
			setCamResolution(global.cam, 1280, 720);
		}
	},
	
	option2: {
		text: "1920X1080",
		func: function() {
			setCamResolution(global.cam, 1920, 1080);
		}
	},
	
	option3: {
		text: "Voltar",
		func: function() {
			with(objMenu) {
				currentMenu = lastMenu;
				lastMenu = undefined;
				selected = 0;
			}
		}
	},
}

mainMenu = [mainOptions.option1, mainOptions.option2, mainOptions.option3];
configMenu = [configOptions.option1, configOptions.option2, configOptions.option3];

currentMenu = mainMenu;
lastMenu = undefined;

inputs = {
	down: vk_down,
	up: vk_up,
	select: vk_enter,
}

selected = 0;
scale = 0;
textScale = 0;

#endregion

#region Appearance

spacing = 25;

sizeFactor = 0.0009;

#endregion

#endregion