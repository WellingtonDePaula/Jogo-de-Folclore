inputs = {
	nextFrame: vk_space,
}

enum CutsceneAction {
	NEW_GAME,
	AFTER_TUTORIAL,
	AFTER_MULA,
	AFTER_WEREWOLF,
	AFTER_CUCA,
}
//cutscenes = {
//	newGame: [],
//	afterTutorial: [],
//	afterMula: [],
//	afterWerewolf: [],
//	afterCuca: [],
//}

cutscenes = [];
cutscenes[CutsceneAction.NEW_GAME] = [
	[sprEmBreve],
	[sprBackground],
]