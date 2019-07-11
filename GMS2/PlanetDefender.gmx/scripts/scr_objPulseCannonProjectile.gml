#define scr_objPulseCannonProjectile
//use in create event
depth = PROJECTILE_OVERLAY_DEPTH; //should already be set in the function that creates this instance

#define scr_objPulseCannonProjectile_alarm0
//used to prevent projectile from persisting in the room beyond a certain time
//and to implement a range

instance_destroy(); 

#define scr_objPulseCannonProjectile_step
if(!global.isGamePaused)
{ 
    if(phy_speed <=0)
    {
        //(use lengthdir_x and y to calculate x,y vectors for it) 
        //then phy_speed_x and y.  
        // 1 pixel per step = 60 pixels per second
        var deltaX = lengthdir_x(7, angle);
        var deltaY = lengthdir_y(7, angle);
        phy_speed_x = deltaX;
        phy_speed_y = deltaY;
        
        //TODO:  make sure the instance's object is defined to be movable by setting speed directly        
    }
}