#define objHexTile
depth = GUI_OVERLAY_DEPTH;

tileType = HexTileType.None;



#define objHexTile_Draw
draw_self();

//draw_text(x - 20, y - 20,tileType);
//draw_text(x - 20,y - 5, tileXY);

/*
if(managementOverlayOpen == true)
{
    draw_text(x - 20, y - 20, "true");
}
else
{
    draw_text(x - 20, y - 20, "false");    
}
*/



#define objHexTile_LeftPress
///////////////////////////////////////////////////////////////////////
//All globals should be defined in 
//      -- Scripts/Rooms/DefendPlanetMap_create
//      -- Scripts/Planets/objPlanet/scr_objPlanet_create
///////////////////////////////////////////////////////////////////////

if(tileType == HexTileType.None)
{
    if(global.selectedItemToPurchase == PurchaseOption.Missile)
    {
        //Check to see if we have enough money
        if(global.playerCash >= CASH_MISSILE)
        {
            //create the weapon
            tileType = HexTileType.Missile;
            sprite_index = spr_hextile_missileLauncher;
            instance_create(x,y,objPlanetMissileLauncher);
            
            //subtract the money
            global.playerCash -= CASH_MISSILE;
        }
        else
        {
            instance_create(room_width/2, 30, objLowFundsText);
        }
    }
    else if(global.selectedItemToPurchase == PurchaseOption.PowerPlant)
    {
        if(global.playerCash >= CASH_POWER_PLANT)
        {
             //create the weapon
            tileType = HexTileType.PowerPlant;
            sprite_index = spr_hextile_nuclearReactor
            instance_create(x,y,objNuclearReactor);
            
            
            //subtract the money
            global.playerCash -= CASH_POWER_PLANT;
            
            //increase nuclearReactorCount
            global.planetInstance.nuclearReactorCount += 1;
        }
        else
        {
            instance_create(room_width/2, 30, objLowFundsText);
        }        
    }
}

global.objPlanetOverlay = PlanetOverlayState.Hidden;
instance_deactivate_object(_objHexTileParent);