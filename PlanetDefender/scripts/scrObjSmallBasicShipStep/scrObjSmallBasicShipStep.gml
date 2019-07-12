if(!global.isGamePaused) //only execute when not paused
{
    part_emitter_region(global.ps_farDepth,emitter,x,x,y,y,1,1);
    if(image_angle < 0 || image_angle > 360)
    {
        image_angle = (image_angle + 360)%360;
    }
    targetAngle = point_direction(x, y, global.planetInstance.x, global.planetInstance.y);
    myAngle = image_angle;
    
    //See https://jibransyed.wordpress.com/2013/09/05/game-maker-gradually-rotating-an-object-towards-a-target/
    //for a good explaination as to why this must be done with Game Maker.
    
    var diffAngle = 0;
    
    if(abs(targetAngle - myAngle) > 180) //adjust for difference overlapping 0|360 boundary
    {
        if(myAngle > targetAngle)
        {
            diffAngle = -1 * ((360 - myAngle) + targetAngle);
        }
        else
        {
            diffAngle = (360 - targetAngle) + myAngle;
        }
    }
    else //this is the simple calculation when difference is < 180
    {
        diffAngle = myAngle - targetAngle;
    }
    
    if(diffAngle > 0)
    {
        physics_apply_torque(5);
    }
    else
    {
        physics_apply_torque(-5);
    }
    
    
    var distance = point_distance(x, y, global.planetInstance.x, global.planetInstance.y);
    if(distance > 325)
    {
        physics_apply_local_force(0,0, 6, 0);
    }
    else
    {
        /* Firing Logic */
        if(abs(diffAngle) < 10)
        {
            if(currentDelay > firingDelay)
            {
                //Fire weapon
                var bullet = instance_create(x,y, objProjectile);
                bullet.angle = targetAngle;
                currentDelay = 0;
            }
            else
            {
                currentDelay++;
            }
        }
        /* End Firing Logic */
        

        if(distance < 300)//Slow down
        {
            physics_apply_local_force(0,0, -5, 0);
        }
    } 
    if(life <= 0)
    {
        part_emitter_destroy(global.ps_farDepth, emitter);    
        instance_destroy();
    }   
}
