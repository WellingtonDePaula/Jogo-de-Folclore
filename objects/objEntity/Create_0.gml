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

normalVel = 0;
velh = 0;
velv = 0;
 
//Alarms
for(var i = 0; i < 12; i++) {
	Alarm[i] = ALARM_INACTIVE;
}