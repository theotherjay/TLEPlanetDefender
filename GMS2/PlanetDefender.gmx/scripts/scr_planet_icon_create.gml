#define scr_planet_icon_create

#define scr_planet_icon_click
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




#define spr_planet_icon_draw
draw_self();

var status = "";
var color = draw_get_colour();
switch(global.systemBattleStatus[index])
{
    case "lose":
        draw_set_colour(c_red);
        status = "DEFEAT!";
        break;
    case "win":
        draw_set_colour(c_lime);
        status = "VICTORY!";
        break;
    default:
        draw_set_colour(c_white);
        break;
}

draw_set_halign(fa_center);
var planetLabel = "Level " + string(index + 1) + "#" + status;
draw_text_transformed(x, y + 30, planetLabel, 1.3, 1.3, 0);
draw_set_halign(fa_left);
draw_set_colour(color);

#define spr_planet_icon_drawGUI
//draw_text(x + 20 , y, x);
//draw_text(x + 100, y, y);