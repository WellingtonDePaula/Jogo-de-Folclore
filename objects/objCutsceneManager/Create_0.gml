enum CutsceneAction {
	NEW_GAME,
	AFTER_TUTORIAL,
	AFTER_MULA,
	AFTER_WEREWOLF,
	AFTER_CUCA,
}

startCutscene = function(cutscene) {
	with(objCutsceneManager) {
		currentCutscene = instance_create_layer(0, 0, "Cutscenes", objCutscene);
		currentCutscene.manager = self;
		currentCutscene.cutsceneArray = cutscenes[cutscene];
	}
}

currentCutscene = undefined;

cutscenes = [];
cutscenes[CutsceneAction.NEW_GAME] = [
	[sprEmBreve],
	[sprBackground],
]
cutscenes[CutsceneAction.AFTER_TUTORIAL] = [
	[sprEmBreve],
	[sprBackground],
]

inputs = {
	nextFrame: vk_space,
}