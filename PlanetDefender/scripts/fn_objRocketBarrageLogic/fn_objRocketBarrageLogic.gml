/// @description fn_objRocketBarrageLogic(targetX, targetY, damage, spreadRadius)
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

