event_inherited();

minigameFather = undefined;

//Quantas vezes o player pode errar, como uma taxa para ele ser expulso do minigame
errors = 0;
maxErrors = 0;

//necessario setar o score maximo:
//maxScore = 2;

xx = 0;
yy = 0;

x = display_get_gui_width()/2;
y = display_get_gui_height()/2;

var _scale = global.scale;

radius = 26;
radius = radius * 10 * _scale;

dir = 0;
velDir = 1;

circleScale = 20;

var _orbit_length = 2 * pi * radius;

var _dir_rad = degtorad(45);

var _linear_position = _dir_rad * radius;

//Funcao para pegar um tipo de target da lista targets
target_get_rand_type = function() {
	var _index = irandom_range(0, ds_list_size(targets)-1);
	//show_debug_message(_index);
	var _val = ds_list_find_value(targets, _index);
	
	return _val;
}

//Funcao que cria um target novo
target_create = function() {
	var _rand_pos = random_range(0, 2 * pi * radius);
	
	var _type = target_get_rand_type();
	
	var _target = new _type(_rand_pos, 110);
	
	array_push(targetsOn, _target);
}

//Funcao que DEVE ser chamado ao criar qualquer objeto do tipo minigamePressOnTime
create_event_end = function() {
	//ds_list_shuffle(targets);
	target_create();
}

//Lista de todos os targets do minigame
targets = ds_list_create();

//Lista de targets ativos
targetsOn = [];

//targetsOn = [new ReverseTarget(30, 50)];