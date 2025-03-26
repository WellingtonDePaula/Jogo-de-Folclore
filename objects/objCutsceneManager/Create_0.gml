inputs = {
	nextFrame: vk_space,
}

enum Cutscenes {
	NEW_GAME,
}

currentScene = undefined;

scenes = [];
scenes[Cutscenes.NEW_GAME] = [
	//sprite da cena, quantos segundos para pular a cena
	[sprEmBreve, 6],
	[sprEmBreve2, 6],
	[sprEmBreve3, 6],
];