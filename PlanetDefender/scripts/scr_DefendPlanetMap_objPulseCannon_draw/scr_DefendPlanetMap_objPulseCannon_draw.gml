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
                            string_hash_to_newline("Pulse Cannon"),
                             1,
                             1,
                             image_angle,
                             c_yellow, 
                             c_yellow, 
                             c_yellow, 
                             c_yellow, 
                             global.opacityPulseCannonLabel);
draw_set_font(font1);                                

