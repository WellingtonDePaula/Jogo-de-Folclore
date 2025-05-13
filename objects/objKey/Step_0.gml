event_inherited();

if(interacted) {
	var inv = interactId.inv;
	ds_list_add(inv, itemId);
	instance_destroy();
}