maxLife = SHIP_BASE_HEALTH_0;
life = maxLife;
firingDelay = 100;
currentDelay = 0;
depth = ENEMY_SHIP_DEPTH;

emitter = part_emitter_create(global.ps_farDepth);
part_emitter_stream(global.ps_farDepth,emitter,global.pt_thrusters,1);

//part_emitter_region(global.ps,emitter,-8,8,10,-10,1,1);

