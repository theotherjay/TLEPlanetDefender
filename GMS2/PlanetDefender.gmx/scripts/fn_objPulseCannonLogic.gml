#define fn_objPulseCannonLogic
///fn_objPulseCannonLogic(target, damage)
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

#define scr_objPulseCannonLogic_alarm0
instance_destroy();

#define scr_objPulseCannonLogic_step
if(!global.isGamePaused && instance_exists(target))
{ 
    if(currentShotDelay >= shotDelay)
    {
        var projectile = fn_firePlanetMissile(global.planetInstance.x, global.planetInstance.y, target.x, target.y, objPlayerPulseCannonProjectile, global.player_pulsecannon_actualdamage); 


        with(projectile)
        {
            //TODO: Revisit how this is setup.  Currently alarm0 is used to 
            //      destroy the projectile instance of some projectile types.
            alarm[0] = 200; //Ultimately determines the distance the projectile will fire.              
        }
        currentShotDelay = 0;
    }
    currentShotDelay++;
}