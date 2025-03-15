var down, up, select, last;

down = keyboard_check_pressed(inputs.down);
up = keyboard_check_pressed(inputs.up);
select = keyboard_check_pressed(inputs.select);

switch(true) {
		
	case down:
		selected += 1;
		break;
		
	case up:
		selected -= 1;
		break;
			
}

selected = clamp(selected, 0, array_length(currentMenu)-1);

if(select) {
	//Caso o botão de selecionar seja pressionado, será executado a função da opção selecionada no menu atual
	currentMenu[selected].func();
}