#define scr_DefendPlayerMap_objMissileBarrageBtn_draw
image_speed = 0;
if(global.player_powerWeapon_selected == PowerWeapon.RocketBarrageType)
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
                             y + 20, 
                             "Rocket Barrage", 
                             1,
                             1,
                             image_angle,
                             c_yellow, 
                             c_yellow, 
                             c_yellow, 
                             c_yellow, 
                             global.opacityMissileBarrageLabel);
draw_set_font(font1);                             

#define scr_DefendPlayerMap_objMissileBarrageBtn_leftPress
if(!global.isGamePaused)
{ 
    global.player_powerWeapon_selected = PowerWeapon.RocketBarrageType;
    global.sidebar_SelectedPowerWeaponText = fn_GetPowerWeaponText(global.player_powerWeapon_selected);
    global.opacityMissileBarrageLabel = 1;
}

#define scr_DefendPlayerMap_objMissileBarrageBtn_step
if(global.opacityMissileBarrageLabel > 0)
{
    global.opacityMissileBarrageLabel -= 1/room_speed;
}