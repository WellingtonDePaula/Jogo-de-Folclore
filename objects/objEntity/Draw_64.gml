if(debugEntity) {
	draw_text(20, 20, stateDebug);
	draw_text(20, 40, [velh, velv]);
	var index = getIndexForSprite();
	draw_text(20, 60, [state, subState, index]);
}