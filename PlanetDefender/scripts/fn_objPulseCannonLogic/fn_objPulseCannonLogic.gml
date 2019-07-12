/// @description fn_objPulseCannonLogic(target, damage)
///                        arg0,   arg1

var pulseCannon = instance_create(0,0, objPulseCannonController);

with(pulseCannon)
{
    //controller uses an alarm to know when to destroy itself (unlike the rocket barrage)
    
    shotDelay = PULSE_CANNON_SHOTDELAY;
    currentShotDelay = 0;
    target = argument0;
    damage = argument1;
    alarm[0] = PULSE_CANNON_TOTALFIRINGSTEPS;
}

