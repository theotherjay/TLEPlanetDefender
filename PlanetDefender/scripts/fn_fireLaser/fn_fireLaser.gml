/// @description fn_fireLaser(startX, startY, targetId, damage, firingTime, objLaserType)
//              arg0    arg1    arg2      arg3    arg4        arg5

if(argument2 != noone)
{
    var laser = instance_create(argument0, argument1, argument5);
    laser.alarm[0] = argument4;
    laser.damage = argument3;
    laser.target = argument2;
    return laser;
}
return noone;
