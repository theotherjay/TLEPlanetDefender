#define scr_DefendPlanetMap_objFocusedLaserBtn_draw
image_speed = 0;
if(global.player_powerWeapon_selected == PowerWeapon.FocusedLaserType)
{
    image_index = 1;
}
else
{
    image_index = 0;
}
draw_self();
draw_set_font(fontLarge);
draw_text_transformed_colour(x + sprite_width + 20, 
                             y +20, 
                             "Focused Laser", 
                             1,
                             1,
                             image_angle,
                             c_yellow, 
                             c_yellow, 
                             c_yellow, 
                             c_yellow, 
                             global.opacityFocusedLaserLabel);
draw_set_font(font1);                                

#define scr_DefendPlanetMap_objFocusedLaserBtn_leftPress
if(!global.isGamePaused)
{
    global.player_powerWeapon_selected = PowerWeapon.FocusedLaserType;
    global.sidebar_SelectedPowerWeaponText = fn_GetPowerWeaponText(global.player_powerWeapon_selected);
    global.opacityFocusedLaserLabel = 1;
}

#define scr_DefendPlanetMap_objFocusedLaserBtn_step
if(global.opacityFocusedLaserLabel > 0)
{
    global.opacityFocusedLaserLabel -= 1/room_speed;
}