var resolutionWidth = 0;
var resolutionHeight = 0;
if(instance_exists(global.cam)) {
	resolutionWidth = global.cam.resolutionWidth;
	resolutionHeight = global.cam.resolutionHeight;
}
//Define a escala de forma linear com a resolução usuário
sizeFactor = (resolutionWidth + resolutionHeight) * 0.0000007;
scale = (resolutionWidth + resolutionHeight) * sizeFactor;

//Define o ponto central da tela
var centerX = display_get_gui_width() / 2;
var centerY = display_get_gui_height() / 2;

//Ajusta o espaçamento na esc;ala
var scaledSpacing = (spacing * scale);

for(var i = 0; i < array_length(currentMenu); i++) {
	//Centraliza a palavra
	draw_set_halign(fa_center);
	
	//Pega o texto da opção atual
	var text = currentMenu[i].text;
	
	// Calcula a posição inicial para centralizar as opções
	var totalHeight = array_length(currentMenu) * scaledSpacing;
	var startY = centerY - totalHeight / 2;
	
	//Calcula a distancia com base na escala e no total de opções
	var distFromBottom = (string_height(text) * scale * i) ;
	
	//Ajusta a posição x e y conforme na escala
	var x1 = centerX;
	var y1 = startY + i * scaledSpacing;
	////////////////////////////////////////////////////
	textScale = scale;
	if(selected == i) {
		draw_set_color(c_red);
	}
	//Escreve as opções na tela
	draw_text_transformed(x1, y1, text, textScale, textScale, 0);
	
	//Coloca os valores como padrão de novo
	draw_set_color(-1);
	draw_set_halign(-1);

}