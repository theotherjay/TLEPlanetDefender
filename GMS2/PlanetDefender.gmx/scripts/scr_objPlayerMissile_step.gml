if(!global.isGamePaused) //only execute when not paused
{ 
    phy_rotation = -angle;
    if(phy_speed < 6)
    {
        physics_apply_local_force(0,0, 5,0);
    }
}
