/*** If a child object has a different draw script, it overrides 
     what is in this script!!! ****/
     
draw_self();
draw_set_colour(c_white);

if(DEBUG_FLAG)
{
    draw_text(x+30, y, string_hash_to_newline("Angle: "));
    draw_text(x + 100, y, string_hash_to_newline(string(myAngle)));
    draw_text(x+30, y + 20, string_hash_to_newline("Relative: "));
    draw_text(x + 110, y + 20, string_hash_to_newline(string(targetAngle))); //string(point_direction(x, y, global.planetInstance.x, global.planetInstance.y)));
}
draw_healthbar(x-10, y+ 20, x + 10, y+24, (life / maxLife)*100, c_white, c_gray, c_red, 0, true, false); 
//draw_text(x - 5, y + 20, string(life));

