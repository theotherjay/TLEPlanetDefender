
if(global.objPlanetOverlay == PlanetOverlayState.Hidden)
{
    global.selectedItemToPurchase = PurchaseOption.PowerPlant;
    //turn on overlay
    instance_activate_object(_objHexTileParent);
    global.objPlanetOverlay = PlanetOverlayState.CommandOptions;            
}  

