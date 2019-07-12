maxLife = SHIP_BASE_HEALTH_2;
life = maxLife;
depth = ENEMY_SHIP_DEPTH;

emitter = part_emitter_create(global.ps_farDepth);
part_emitter_stream(global.ps_farDepth,emitter,global.pt_thrusters,1);

