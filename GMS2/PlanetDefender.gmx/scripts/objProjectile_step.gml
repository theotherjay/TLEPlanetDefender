if(!global.isGamePaused) //only execute when not paused
{ 
    phy_rotation = -angle;  
    if(phy_speed < 5)
    {
        physics_apply_local_force(0,0, 5,0);
    }
}
