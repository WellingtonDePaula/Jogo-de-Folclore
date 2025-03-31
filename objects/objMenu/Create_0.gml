#region Menu
enum MenuTypes {
	MAIN,
	OPTIONS,
}

#region Options

options = [];
options[MenuTypes.MAIN] = {
	
	option1: {
		text: "Jogar",
		func: function() {
			room_goto(rmCucaJail);
		},
	},
	
	option2: {
		text: "Novo Jogo",
		func: function() {
			//room_goto(rmGame);
			room_goto(rmCutscenes);
			global.cutsceneManager.startCutscene(Cutscenes.NEW_GAME);
		},
	},
	
	option3: {
		text: "Play Test",
		func: function() {
			room_goto(rmTest);
		},
	},
	
	option4: {
		text: "Opcoes",
		func: function() {
			with(objMenu) {
				lastMenu = MenuTypes.MAIN;
				currentMenu = MenuTypes.OPTIONS;
				optionSelected = 0;
			}
		},
	},
	
	option5: {
		text: "Sair",
		func: function() {
			game_end();
		},
	},
};
options[MenuTypes.OPTIONS] = {
	option1: {
		text: "1280X720",
		func: function() {
			setCamResolution(global.cam, 1280, 720);
		},
	},
	
	option2: {
		text: "1920X1080",
		func: function() {
			setCamResolution(global.cam, 1920, 1080);
		},
	},
	
	option3: {
		text: "Voltar",
		func: function() {
			with(objMenu) {
				currentMenu = lastMenu;
				lastMenu = undefined;
				optionSelected = 0;
			}
		},
	},
};

#region Main

optionsArr[MenuTypes.MAIN][0] = options[MenuTypes.MAIN].option1;
optionsArr[MenuTypes.MAIN][1] = options[MenuTypes.MAIN].option2;
optionsArr[MenuTypes.MAIN][2] = options[MenuTypes.MAIN].option3;
optionsArr[MenuTypes.MAIN][3] = options[MenuTypes.MAIN].option4;
optionsArr[MenuTypes.MAIN][4] = options[MenuTypes.MAIN].option5;

#endregion

#region Config

optionsArr[MenuTypes.OPTIONS][0] = options[MenuTypes.OPTIONS].option1;
optionsArr[MenuTypes.OPTIONS][1] = options[MenuTypes.OPTIONS].option2;
optionsArr[MenuTypes.OPTIONS][2] = options[MenuTypes.OPTIONS].option3;

#endregion
#endregion

currentMenu = MenuTypes.MAIN;
lastMenu = undefined;

inputs = {
	down: vk_down,
	up: vk_up,
	select: vk_enter,
}

optionSelected = 0;

scale = 0;

//spacing = 2 * MAIN_FONT[Fonts.SCALE];
spacing = 2 * global.mainFont.scale;
#endregion