var down, up, select;

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

selected = clamp(selected, 0, array_length(menu)-1);

if(select) {
	menu[selected].func();
}