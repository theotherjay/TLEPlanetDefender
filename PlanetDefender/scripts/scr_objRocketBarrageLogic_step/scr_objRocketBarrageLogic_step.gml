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
