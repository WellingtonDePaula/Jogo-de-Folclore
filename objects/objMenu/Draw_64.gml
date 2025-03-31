
//Define o ponto central da tela
var centerX = display_get_gui_width() / 2;
var centerY = display_get_gui_height() / 2;

//Ajusta o espaçamento na esc;ala
scale = global.scale;
var scaledSpacing = (spacing * scale);

var menu = optionsArr[currentMenu];

for(var i = 0; i < array_length(menu); i++) {
	
	//Centraliza a palavra
	draw_set_halign(fa_center);
	//draw_set_font(MAIN_FONT[Fonts.FONT]);
	draw_set_font(global.mainFont.font);
	
	//Pega o texto da opção atual
	var text = menu[i].text;
	
	// Calcula a posição inicial para centralizar as opções
	var totalHeight = array_length(menu) * scaledSpacing;
	var startY = centerY - totalHeight / 2;
	
	//Ajusta a posição x e y conforme na escala
	var x1 = centerX;
	var y1 = startY + i * scaledSpacing;
	////////////////////////////////////////////////////
	
	if(optionSelected == i) {
		draw_set_color(c_red);
	}
	//Escreve as opções na tela
	draw_text_transformed(x1, y1, text, scale, scale, 0);
	//draw_sprite_ext(sprBackground, 0, 0, 0, scale, scale, 0, c_white, 1);
	
	//Coloca os valores como padrão de novo
	draw_set_color(-1);
	draw_set_font(-1);
	draw_set_halign(-1);
}