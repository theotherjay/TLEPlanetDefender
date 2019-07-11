///fn_IsClicked_Planet()
if(global.planetInstance != noone)
{
    return position_meeting(mouse_x, mouse_y, global.planetInstance);
}
