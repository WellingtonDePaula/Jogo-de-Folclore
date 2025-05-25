function saveGame() {
	if(file_exists("save.sav")) {
		file_delete("save.sav");
	}
	
	ini_open("save.sav");
	
	ini_write_real("controller", "Room", room);
	
	ini_close();
	
	show_debug_message("O jogo foi salvo as" + date_datetime_string(date_current_datetime()));
}

function loadGame() {
	if(!file_exists("save.sav")) {
		return;
	}
	
	ini_open("save.sav");
	
	rmGo = ini_read_real("controller", "Room", rmTest);
	
	ini_close();
	
	return rmGo;
}