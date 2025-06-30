function inventoryVerifyType(_inv, _type) {
	var len = ds_list_size(_inv);
	
	for(var i = 0; i < len; i++) {
		var item = ds_list_find_value(_inv, i);
		
		if(is_instanceof(item, _type)) {
			return true;
		}
	}
	return false;
}

function inventoryStruct(_inv, _type) {
	var len = ds_list_size(_inv);
	
	for(var i = 0; i < len; i++) {
		var item = ds_list_find_value(_inv, i);
		
		if(is_instanceof(item, _type)) {
			return item;
		}
	}
}

function inventoryRemoveAmount(_inv, _type, _amount) {
	if(inventoryVerifyType(_inv, _type)) {
		var item = inventoryStruct(_inv, _type);
		var i = ds_list_find_index(_inv, item);
		item.RemoveAmount(_amount);
	}
	
	//return _inv;
}

function inventoryAddAmout(_inv, _type, _amount) {
	if(inventoryVerifyType(_inv, _type)) {
		var item = inventoryStruct(_inv, _type);
		var i = ds_list_find_index(_inv, item);
		item.AddAmount(_amount);
	}
	
	//return _inv;
}

function inventoryItemAmount(_inv, _type) {
	if(inventoryVerifyType(_inv, _type)) {
		return inventoryStruct(_inv, _type).amount;
	}
	return false;
}