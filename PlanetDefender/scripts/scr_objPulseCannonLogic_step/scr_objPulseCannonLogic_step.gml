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
