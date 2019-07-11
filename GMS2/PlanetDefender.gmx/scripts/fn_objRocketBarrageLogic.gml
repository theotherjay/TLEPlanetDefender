#define fn_objRocketBarrageLogic
///fn_objRocketBarrageLogic(targetX, targetY, damage, spreadRadius)
///                      arg0,    arg1,    arg2,   arg3,         arg4

var rocketBarrage = instance_create(0,0, objRocketBarrageController);

with(rocketBarrage)
{
    totalShots = MISSILE_BARRAGE_TOTALSHOTS;
    shotDelay = MISSILE_BARRAGE_SHOTDELAY;
    currentShots = 0;
    currentShotDelay = 0;
    
    targetX = argument0;
    targetY = argument1;
    spreadRadius = argument3; //radius around the target point that the barrage will fire a spread of missiles.
    damage = argument2;
}

#define scr_objRocketBarrageLogic_step
if(!global.isGamePaused)
{
    if(currentShots >= totalShots)
    {
        instance_destroy();
    }
    else if(currentShots == 0 || currentShotDelay >= shotDelay)
    {
        var aimOffsetX = random_range(-abs(spreadRadius), abs(spreadRadius));
        var aimOffsetY = random_range(-abs(spreadRadius), abs(spreadRadius));
        fn_firePlanetMissile(global.planetInstance.x, global.planetInstance.y, targetX + aimOffsetX, targetY + aimOffsetY, objBarrageRocket, damage);
        currentShots++;
        currentShotDelay = 0;
    }
    else
    {
        currentShotDelay++;
    }
}