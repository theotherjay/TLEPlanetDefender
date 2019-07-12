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
draw_text_transformed(x, y + 30, string_hash_to_newline(planetLabel), 1.3, 1.3, 0);
draw_set_halign(fa_left);
draw_set_colour(color);

