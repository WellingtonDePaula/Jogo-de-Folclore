//Alarms
for(var i = 0; i < array_length(Alarm); i++) {
	if(Alarm[i] > 0) {
		Alarm[i] -= delta;
	}
	else if(Alarm[i] <= 0 && Alarm[i] > ALARM_INACTIVE) {
		Alarm[i] = ALARM_INACTIVE;
		event_perform(ev_alarm, i);
	}
}