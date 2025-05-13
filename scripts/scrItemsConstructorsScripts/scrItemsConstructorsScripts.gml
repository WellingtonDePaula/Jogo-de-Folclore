function Item(_obj,  _amount, _maxAmount) constructor {
	
	obj = _obj;
	amount = _amount;
	maxAmount = _maxAmount;
	
	static AddAmount = function(_amount) {
		amount = clamp(amount + _amount, 0, maxAmount);
	}
	
	static RemoveAmount = function(_amount) {
		amount = clamp(amount - _amount, 0, maxAmount);
	}
}

function Ammo(_obj,  _amount, _maxAmount) : Item(_obj,  _amount, _maxAmount) constructor {}


function Key(_obj,  _amount, _maxAmount) : Item(_obj,  _amount, _maxAmount) constructor {}