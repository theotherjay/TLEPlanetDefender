//Draw state-specific, view-dependent HUD objects
if(global.objPlanetOverlay == PlanetOverlayState.CommandOptions){

             
}

draw_set_font(fontLarge);
draw_text_transformed_colour( 20, 
                              300, 
                              "Money:#" + string(global.playerCash),
                              1,
                              1,
                              image_angle,
                              c_white, 
                             c_white, 
                             c_white, 
                             c_white,
                             1);
                             
draw_text_transformed_colour( 15, 
                              (global.sideBarPadding *15) + 10, 
                              "Purchase#Defenses", //Purchase
                              1,
                              1,
                              image_angle,
                              c_white, 
                             c_white, 
                             c_white, 
                             c_white,
                             1);
                           

//planet energy              
draw_text_colour((room_width / 2) - 310,  room_height - 40, "Energy", c_white,c_white,c_white,c_white, 1);
draw_healthbar( (room_width / 2) - 180,
                room_height - 20, 
                (room_width / 2) + 240,
                room_height - 10,  
                (global.planetInstance.energy / PLAYER_PLANET_MAXENERGY) * 100,
                c_gray, //background color
                c_red, // min color
                c_yellow, // max color
                0,  //anchor (left)
                true, //show background
                true); // show border
                
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_text_transformed(room_width/2 - 180, room_height - 55, 
                      "Race Bonus: " + raceBonus,        //: " + playerRaceText + "  
                      0.6, 0.6, 1);
                     
draw_set_colour(c_yellow);

