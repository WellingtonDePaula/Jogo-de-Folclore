state = undefined;
stateMode = undefined;
statePrevious = {
	state: undefined,
	sprite: undefined,
};

isPaused = false;

stateScripts = [];
stateSprites = [];
stateDebug = "";

cutsceneRunning = false;
cutsceneVel = 0;

normalVel = 0;
velh = 0;
velv = 0;

stop = function() {
	velh = 0;
	velv = 0;
}

path = path_add();
 
//Alarms
for(var i = 0; i < 12; i++) {
	Alarm[i] = ALARM_INACTIVE;
}