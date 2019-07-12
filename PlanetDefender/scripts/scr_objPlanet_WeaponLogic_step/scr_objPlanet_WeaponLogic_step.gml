//instance properties should reference objPlanet instance

if(!global.isGamePaused)
{
    missileDelayCurrent++;
    if(missileDelayCurrent > missileDelay)
    {
       missileDelayCurrent = 0;   
       var targetInstance =  instance_nearest(x, y, objShip);
       if(targetInstance != noone)
       {
            fn_firePlanetMissile(x, y, targetInstance.x, targetInstance.y, objPlayerMissile, global.player_missilebase_actualdamage);
       }
    }
}
