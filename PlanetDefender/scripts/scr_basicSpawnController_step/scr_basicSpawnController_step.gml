
if(!global.isGamePaused)
{
    deltaSteps++;
    if(started)
    {
        deltaPortalSteps++;
        if(deltaSteps/room_speed > secondsBetweenSpawns)
        {      
            deltaSteps = 0;  
            deltaPortalSteps = 0; 
            currentSpawn++;
            
            var xPos = irandom_range(x-30, x+30);
            var yPos = irandom_range(y-30, y+30);
            part_emitter_region(global.ps,emitter,xPos,xPos,yPos,yPos,ps_shape_ellipse,1);
            
            var spawn;
            switch(spawnType)
            {
                case SpawnType.SmallBasicShip:
                    spawn = instance_create(xPos, yPos, objSmallBasicShip);
                break;
                case SpawnType.MediumBasicShip:
                    spawn = instance_create(xPos, yPos, obj_shipLgFreight);
                break;
                case SpawnType.Kamikazi:
                    spawn = instance_create(xPos, yPos, objKamikaze);
                break;
            }
            
            
            part_emitter_stream(global.ps,emitter,global.pt_portal,5);
            
            spawn.phy_rotation = -point_direction(x, y, global.planetInstance.x, global.planetInstance.y);
            
            if(currentSpawn >= totalSpawns)
            {
                part_emitter_destroy(global.ps, emitter);
                instance_destroy(id); //destroy this spawn controller once it has finished its spawns
            }
        }
        
        if(deltaPortalSteps/room_speed > 1) //1 second portal duration
        {
            deltaPortalSteps = 0;
            part_emitter_stream(global.ps, emitter, global.pt_portal, 0);
        }
    }
    else if(deltaSteps/room_speed > secondsToStart)
    {
        started = true;
    }
}
