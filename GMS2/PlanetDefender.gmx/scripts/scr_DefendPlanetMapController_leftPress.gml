#define scr_DefendPlanetMapController_leftPress
//HUD control check

if( instance_position(mouse_x, mouse_y, objMenuBtn) == noone &&
    instance_position(mouse_x, mouse_y, objPauseBtn) == noone &&
    instance_position(mouse_x, mouse_y, objMissleBarrageBtn) == noone &&
    instance_position(mouse_x, mouse_y, objFocusedLaserBtn) == noone &&
    instance_position(mouse_x, mouse_y, objPulseCannonBtn) == noone &&
    instance_position(mouse_x, mouse_y, objMissileDefenseBtn) == noone &&
    instance_position(mouse_x, mouse_y, objReactorDefenseBtn) == noone &&
    !position_meeting(mouse_x, mouse_y, objPlanet) &&
    !position_meeting(mouse_x, mouse_y, objHexEmpty)    
    )
{    
    scr_GamePlayLeftPress();
}    

#define scr_GamePlayLeftPress
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