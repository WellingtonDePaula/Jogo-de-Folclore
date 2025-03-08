global.cellSize = 16;

cellVAmount = room_height div global.cellSize;
cellHAmount = room_width div global.cellSize;

global.grid = mp_grid_create(0, 0, cellHAmount, cellVAmount, global.cellSize, global.cellSize);	