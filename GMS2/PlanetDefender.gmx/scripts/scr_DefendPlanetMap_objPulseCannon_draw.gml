#define scr_DefendPlanetMap_objPulseCannon_draw
image_speed = 0;
if(global.player_powerWeapon_selected == PowerWeapon.PulseCannonType)
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
                            "Pulse Cannon",
                             1,
                             1,
                             image_angle,
                             c_yellow, 
                             c_yellow, 
                             c_yellow, 
                             c_yellow, 
                             global.opacityPulseCannonLabel);
draw_set_font(font1);                                

#define scr_DefendPlanetMap_objPulseCannon_leftPress
if(!global.isGamePaused)
{
    global.player_powerWeapon_selected = PowerWeapon.PulseCannonType;
    global.sidebar_SelectedPowerWeaponText = fn_GetPowerWeaponText(global.player_powerWeapon_selected);
    global.opacityPulseCannonLabel = 1;
}

#define scr_DefendPlanetMap_objPulseCannon_step
if(global.opacityPulseCannonLabel > 0)
{
    global.opacityPulseCannonLabel -= 1/room_speed;
}