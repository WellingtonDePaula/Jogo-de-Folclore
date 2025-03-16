//Define o ponto central da tela
var centerX = display_get_gui_width() / 2;
var centerY = display_get_gui_height() / 2;

//Ajusta o espaçamento na esc;ala
textScale = GUI.scale;
var scaledSpacing = (spacing * textScale);

for(var i = 0; i < array_length(currentMenu); i++) {
	//Centraliza a palavra
	draw_set_halign(fa_center);
	draw_set_font(global.mainFont);
	
	//Pega o texto da opção atual
	var text = currentMenu[i].text;
	
	// Calcula a posição inicial para centralizar as opções
	var totalHeight = array_length(currentMenu) * scaledSpacing;
	var startY = centerY - totalHeight / 2;
	
	//Ajusta a posição x e y conforme na escala
	var x1 = centerX;
	var y1 = startY + i * scaledSpacing;
	////////////////////////////////////////////////////
	
	if(selected == i) {
		draw_set_color(c_red);
	}
	//Escreve as opções na tela
	draw_text_transformed(x1, y1, text, textScale, textScale, 0);
	
	//Coloca os valores como padrão de novo
	draw_set_color(-1);
	draw_set_font(-1);
	draw_set_halign(-1);
}