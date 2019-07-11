//Draw regular HUD text
/*  MOVED TO REGULAR DRAW METHOD 
draw_set_font(fontLarge);
draw_text_transformed_colour( 10, 
                              global.sideBarPadding * 10, 
                              "Funds:", //Funds
                              1,
                              1,
                              image_angle,
                              c_white, 
                             c_white, 
                             c_white, 
                             c_white,
                             1);
                             
draw_text_transformed_colour( 10,
                              (global.sideBarPadding * 10) + 30, 
                              global.playerCash, //[Player cash]
                              1,
                              1,
                              image_angle,
                              c_white, 
                             c_white, 
                             c_white, 
                             c_white,
                             1);

draw_text_transformed_colour( 10, 
                              (global.sideBarPadding *15) + 10, 
                              "Purchase", //Purchase
                              1,
                              1,
                              image_angle,
                              c_white, 
                             c_white, 
                             c_white, 
                             c_white,
                             1);
draw_text_transformed_colour( 10, 
                              (global.sideBarPadding * 15) + 40, 
                              "Defenses", //Defenses
                              1,
                              1,
                              image_angle,
                              c_white, 
                             c_white, 
                             c_white, 
                             c_white,
                             1);                             

var statBarHeight = 20;


//planet energy              
draw_text((room_width / 2) - 310,  room_height - 70, "Energy");
draw_healthbar( (room_width / 2) - 180,
                room_height - 50, 
                (room_width / 2) + 240,
                room_height - 40,  
                (global.planetInstance.energy / PLAYER_PLANET_MAXENERGY) * 100,
                c_gray, //background color
                c_white, // min color
                c_white, // max color
                0,  //anchor (left)
                true, //show background
                true); // show border
*/
