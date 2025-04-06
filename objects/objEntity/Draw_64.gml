if(debugEntity) {
	draw_set_font(global.mainFont.font);
	var scale = global.scale * .3;
	draw_text_transformed(20, 20, stateDebug,scale, scale, 0);
	draw_text_transformed(20, 40, [velh, velv], scale, scale, 0);
	show_debug_message(global.scale);
	draw_set_font(-1);
}