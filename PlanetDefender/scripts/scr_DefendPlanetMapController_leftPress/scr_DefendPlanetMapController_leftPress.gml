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

