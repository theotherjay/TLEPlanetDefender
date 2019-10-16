//HUD control check

if( instance_position(mouse_x, mouse_y, objMenuBtn) == noone &&
	instance_position(mouse_x, mouse_y, objMenuBtn_zoomed) == noone &&
    instance_position(mouse_x, mouse_y, objPauseBtn) == noone &&
	instance_position(mouse_x, mouse_y, objPauseBtn_zoomed) == noone &&
	instance_position(mouse_x, mouse_y, obj_zoombutton) == noone &&
	instance_position(mouse_x, mouse_y, obj_zoombutton_zoomed) == noone &&
	
	instance_position(mouse_x, mouse_y, objMissleBarrageBtn) == noone &&
    instance_position(mouse_x, mouse_y, objFocusedLaserBtn) == noone &&
    instance_position(mouse_x, mouse_y, objPulseCannonBtn) == noone &&
    instance_position(mouse_x, mouse_y, objMissileDefenseBtn) == noone &&
    instance_position(mouse_x, mouse_y, objReactorDefenseBtn) == noone &&
	
	instance_position(mouse_x, mouse_y, objMissleBarrageBtn_zoomed) == noone &&
    instance_position(mouse_x, mouse_y, objFocusedLaserBtn_zoomed) == noone &&
    instance_position(mouse_x, mouse_y, objPulseCannonBtn_zoomed) == noone &&
    instance_position(mouse_x, mouse_y, objMissileDefenseBtn_zoomed) == noone &&
    instance_position(mouse_x, mouse_y, objReactorDefenseBtn_zoomed) == noone &&
	
    !position_meeting(mouse_x, mouse_y, objPlanet) &&
    !position_meeting(mouse_x, mouse_y, objHexEmpty)    
    )
{    
    scr_GamePlayLeftPress();
}    

