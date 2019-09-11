//Draw state-specific, view-dependent HUD objects
if(global.objPlanetOverlay == PlanetOverlayState.CommandOptions){

             
}


layerName = "GUI_Zoom_In";
instMoneyLabel = instPosZoomInMoneyLabel;
instPurchaseLabel = instPosZoomInPurchaseLabel; 
instEnergyBar = instPosZoomInEnergyBar;
instEnergyBarBottomRight = instPosZoomInEnergyBarBottomRight;
instEnergyLabel = instPosZoomInEnergyLabel;
instRaceBonusLabel = instPosZoomInRaceBonusLabel;

zoomedIn = layer_get_visible(layerName);
if(!zoomedIn)
{
	instMoneyLabel = instPosZoomOutMoneyLabel;
	instPurchaseLabel = instPosZoomOutPurchaseLabel;
	instEnergyBar = instPosZoomOutEnergyBar;
	instEnergyLabel = instPosZoomOutEnergyLabel;
	instEnergyBarBottomRight = instPosZoomOutEnergyBarBottomRight;
	instRaceBonusLabel = instPosZoomOutRaceBonusLabel;
}


draw_set_font(fontLarge);
draw_text_transformed_colour( instMoneyLabel.x, 
                              instMoneyLabel.y, 
                              string_hash_to_newline("Money:#" + string(global.playerCash)),
                              (zoomedIn? .8: 2),
                              (zoomedIn? .8: 2),
                              image_angle,
                              c_white, 
                             c_white, 
                             c_white, 
                             c_white,
                             1);
                             
draw_text_transformed_colour( instPurchaseLabel.x, 
                              instPurchaseLabel.y, 
                              string_hash_to_newline("Purchase#Defenses"), //Purchase
                              (zoomedIn? 0.8: 2),
                              (zoomedIn? 0.8: 2),
                              image_angle,
                              c_white, 
                             c_white, 
                             c_white, 
                             c_white,
                             1);
                           

//planet energy              
draw_text_transformed_colour(instEnergyLabel.x,  
							 instEnergyLabel.y, 
							 string_hash_to_newline("Energy"),
							 (zoomedIn? 0.8: 2),
							 (zoomedIn? 0.8: 2),
							 image_angle,
							 c_white,
							 c_white,
							 c_white,
							 c_white, 1);
							 
draw_healthbar( instEnergyBar.x,
                instEnergyBar.y, 
                instEnergyBarBottomRight.x,
                instEnergyBarBottomRight.y,  
                (global.planetInstance.energy / PLAYER_PLANET_MAXENERGY) * 100,
                c_gray, //background color
                c_red, // min color
                c_yellow, // max color
                0,  //anchor (left)
                true, //show background
                true); // show border
                
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_text_transformed(instRaceBonusLabel.x, instRaceBonusLabel.y, 
                      string_hash_to_newline("Race Bonus: " + raceBonus),        //: " + playerRaceText + "  
                      (zoomedIn?0.4: 1.2), (zoomedIn?0.4: 1.2), 1);
                     
draw_set_colour(c_yellow);

