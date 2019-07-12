//Overlay check

 if(!global.isGamePaused)     
 {  
    if(global.objPlanetOverlay == PlanetOverlayState.Hidden)
    {
        if(global.player_powerWeapon_selected == PowerWeapon.RocketBarrageType)
        {
            if(global.planetInstance.energy > PLAYER_ROCKETBARRAGE_ENERGYCOST)
            {
                fn_objRocketBarrageLogic(mouse_x, mouse_y, global.player_rocketbarrage_actualdamage, 75);
                global.planetInstance.energy -= PLAYER_ROCKETBARRAGE_ENERGYCOST;
            }
        }
        else if(global.player_powerWeapon_selected == PowerWeapon.FocusedLaserType)
        {
            var target = fn_findTarget(mouse_x, mouse_y, 100);
            if(target != noone && global.planetInstance.energy > PLAYER_FOCUSEDLASER_ENERGYCOST)
            {
                fn_fireLaser(global.planetInstance.x, global.planetInstance.y, target , PLAYER_FOCUSEDLASER_BASEDAMAGE, 60, objPlayerLaser); 
                global.planetInstance.energy -= PLAYER_FOCUSEDLASER_ENERGYCOST;
            }
        }
        else if(global.player_powerWeapon_selected == PowerWeapon.PulseCannonType)
        {
            var target = fn_findTarget(mouse_x, mouse_y, 100);
            if(target != noone && global.planetInstance.energy > PLAYER_PULSECANNON_ENERGYCOST)
            {
                fn_objPulseCannonLogic(target, global.player_pulsecannon_actualdamage);
                global.planetInstance.energy -= PLAYER_PULSECANNON_ENERGYCOST;
            }
        }
    }
    else
    {
        global.objPlanetOverlay = PlanetOverlayState.Hidden;
         //turn off overlay if it was on
        instance_deactivate_object(_objHexTileParent);
    }
}
