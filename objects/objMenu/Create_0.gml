#region Menu
mainOptions = {
	
	option1: {
		text: "Jogar",
		func: function() {
			//room_goto(undefined);
			room_goto(rmGame);
		}
	},
	option2: {
		text: "Novo Jogo",
		func: function() {
			//room_goto(rmGame);
			room_goto(rmCutscenes);
			global.cutsceneManager.startCutscene(Cutscenes.NEW_GAME);
		}
	},
	
	option3: {
		text: "Opcoes",
		func: function() {
			with(objMenu) {
				lastMenu = currentMenu;
				currentMenu = configMenu;
				selected = 0;
			}
		}
	},
	
	option4: {
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

mainMenu = [mainOptions.option1, mainOptions.option2, mainOptions.option3, mainOptions.option4];
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

spacing = 2 * global.mainFont.scale;
#endregion