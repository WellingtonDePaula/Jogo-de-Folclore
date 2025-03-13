event_inherited();


vel = 1.5;

#region Mula IA
movePath = path_add();
xToGo = x;
yToGo = y;

maxAttackFactor = 3;
chooseAttackFactor = maxAttackFactor;

alarmCooldown = [50, 200];

targetId = objPlayer;

dirToChase = 0;

distToChase = 70;
#endregion

#region States

#region Scripts
//NORMAL
stateScripts[MulaMode.FIRST] = [];
stateScripts[MulaMode.FIRST][MulaStates.CHOOSE] = scrMulaFirstStateChoose;
stateScripts[MulaMode.FIRST][MulaStates.IDLE] = scrMulaFirstStateIdle;
stateScripts[MulaMode.FIRST][MulaStates.MOVING] = scrMulaFirstStateMoving;
stateScripts[MulaMode.FIRST][MulaStates.PRE_CHASING] = scrMulaFirstStatePreChasing;
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
	PRE_CHASING,
	CHASING,
}

state = MulaStates.CHOOSE;
stateMode = MulaMode.FIRST;

#endregion States