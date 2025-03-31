var down, up, select, last;

down = keyboard_check_pressed(inputs.down);
up = keyboard_check_pressed(inputs.up);
select = keyboard_check_pressed(inputs.select);

switch(true) {
		
	case down:
		optionSelected += 1;
		break;
		
	case up:
		optionSelected -= 1;
		break;
			
}

var menu = optionsArr[currentMenu];
optionSelected = clamp(optionSelected, 0, array_length(menu)-1);

if(select) {
	//Caso o botão de selecionar seja pressionado, será executado a função da opção selecionada no menu atual
	menu[optionSelected].func();
}