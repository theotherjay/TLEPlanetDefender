///fn_GenerateSpawns(difficulty, minSpawnType, maxSpawnType)
//argument0 = planet difficulty: 1...n
//argument1 = minimum spawn type: 1...n where n is the number of different spawn types
//argument2 = maximum spawn type: 1...n where n is the number of different spawn types
var totalEnemies = argument0 * BASE_ENEMY_COUNT;
var totalSpawns = 1 + floor(argument0/2 * BASE_ENEMY_SPAWN_LOCATIONS);
var enemiesPerSpawn = floor(totalEnemies/totalSpawns);
var minSpawnType = argument1;
var maxSpawnType = argument2;
global.currentRoomRequiredKills = totalSpawns * enemiesPerSpawn;

var i;
for(i = 0; i < totalSpawns; i++)
{
    var isValid = false;
    var left = global.planetInstance.bbox_left - 200;
    var right = global.planetInstance.bbox_right + 200;
    var top = global.planetInstance.bbox_top - 200;
    var bottom = global.planetInstance.bbox_bottom + 200;    
    
    var minX = -100;
    var minY = -100;
    var maxX = GAME_WIDTH + 100;
    var maxY = GAME_HEIGHT + 100;
    var spawnX;
    var spawnY;
    while(!isValid)
    {
        spawnX = irandom_range(minX, maxX);
        spawnY = irandom_range(minY, maxY);
        
        if(!point_in_rectangle(spawnX, spawnY, left, top, right, bottom))
        {
            isValid = true;
        }
    }
    
    var spawn = instance_create(spawnX, spawnY, objSpawnController);
    spawn.secondsToStart = i * 2;
    spawn.totalSpawns = enemiesPerSpawn;
    spawn.secondsBetweenSpawns = irandom_range(3, 6);
    var f = maxSpawnType - minSpawnType;
    if(f > 0)
    {
        
    }
    var selectedSpawnType = irandom_range(minSpawnType, maxSpawnType);
    spawn.spawnType = selectedSpawnType;
}

