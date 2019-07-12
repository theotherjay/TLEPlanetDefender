if(sprite_index != spr_planet_defeated_icon && sprite_index != spr_planet_win_icon)
{
    global.systemSelectedIndex = index; //index is initialized in scr_rm_command_create
    instance_destroy(objSelectionYellow);
    instance_create(x, y, objSelectionYellow);
    
    if(sprite_index == spr_ice_icon)
    {
        global.playerPlanetSelectedType = "ice";
    }
    else if(sprite_index == spr_desert_icon)
    {
        global.playerPlanetSelectedType = "desert";
    }
    else if(sprite_index == spr_volcano_icon)
    {
        global.playerPlanetSelectedType = "valcano";
    }
    else 
    {
        global.playerPlanetSelectedType = "terrian"
    }
}




