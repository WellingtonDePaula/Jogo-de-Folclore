event_inherited();

vel = 1.5;
path = path_add();
xToGo = x;
yToGo = y;

distMinFromPlayer = 90;
distMaxFromPlayer = 240;
maxDistPlayerW = room_width/2;
maxDistPlayerH = room_height/2;

targetId = objPlayer;

#region States

#region Scripts
//NORMAL
stateScripts[MulaMode.FIRST] = [];
stateScripts[MulaMode.FIRST][MulaStates.CHOOSE] = scrMulaFirstStateChoose;
stateScripts[MulaMode.FIRST][MulaStates.IDLE] = scrMulaFirstStateIdle;
stateScripts[MulaMode.FIRST][MulaStates.MOVING] = scrMulaFirstStateMoving;
stateScripts[MulaMode.FIRST][MulaStates.CHASING] = scrMulaFirstStateChasing;
#endregion

#region Sprites
//NORMAL
stateSprites[MulaMode.FIRST] = [];
stateSprites[MulaMode.FIRST][MulaStates.CHOOSE] = sprMulaIdle;
stateSprites[MulaMode.FIRST][MulaStates.IDLE] = sprMulaIdle;
stateSprites[MulaMode.FIRST][MulaStates.MOVING] = sprMulaMoving;
#endregion

enum MulaMode {
	FIRST,
}

enum MulaStates {
	CHOOSE,
    IDLE,
    MOVING,
	CHASING,
}

state = MulaStates.CHOOSE;
stateMode = MulaMode.FIRST;

#endregion States