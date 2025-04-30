manager = undefined;

steps = undefined;

current = 0;
//steps[currentScene][currentEntity]

sceneEnded = false;
index = [];

handleStepExecution = function(stepIndex) {
    var step = steps[current][index[stepIndex]];
    if (!step.finished) {
        if (step.func != undefined) {
            scrExecuteWithArgs(step.func, step.funcArguments);
        }
        step.finished = true;
    }
}

setPos = function(_step, _entity) {
	if(_step.x != undefined) {
		_entity.x = _step.x;
	}
	if(_step.y != undefined) {
		_entity.y = _step.y;
	}
}

//Alarms
for(var i = 0; i < 12; i++) {
	Alarm[i] = ALARM_INACTIVE;
}