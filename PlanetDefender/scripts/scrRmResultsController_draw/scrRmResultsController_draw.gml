var color = draw_get_colour();
draw_set_halign(fa_center);
draw_set_font(fontLarge);

var status = "";
var text = "Total Kills: " + string(global.systemShipKills[global.systemSelectedIndex]) + "#Total Earned: " + string(global.systemEarnedCash[global.systemSelectedIndex]);
switch(global.systemBattleStatus[global.systemSelectedIndex])
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
draw_text(x,y, string_hash_to_newline(status));
draw_set_colour(c_white);
draw_text(x, y+50, string_hash_to_newline(text));

draw_set_font(font1);
draw_set_halign(fa_left);
draw_set_colour(color);

