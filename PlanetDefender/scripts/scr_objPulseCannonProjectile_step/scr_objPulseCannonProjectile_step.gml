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
