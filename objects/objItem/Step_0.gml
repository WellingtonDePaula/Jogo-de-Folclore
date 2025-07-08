/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

if(interacted) {
	var inv = interactId.inv;
	ds_list_add(inv, itemId);
	instance_destroy();
}