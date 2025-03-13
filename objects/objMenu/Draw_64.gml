//display_get_gui_width()

for(var i = 0; i < array_length(menu); i++) {
	if(selected == i) {
		draw_set_color(c_red);
	}
	draw_text(20, 20 + (distBetweenOption * i), menu[i].text);
	draw_set_color(-1);
}