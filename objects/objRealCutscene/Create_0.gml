manager = undefined;

steps = undefined;

current = 0;
//steps[currentScene][currentEntity]

sceneEnded = false;
index = [];

//Alarms
for(var i = 0; i < 12; i++) {
	Alarm[i] = ALARM_INACTIVE;
}