#define scr_objShip_create
/*** If a child object has a different create script, it overrides 
     what is in this script!!! ****/

firingDelay = 100;
currentDelay = 0;
depth = ENEMY_SHIP_DEPTH;

#define scr_objShip_step
/*** If a child object has a different step script, it overrides 
     what is in this script!!! ****/

if(!global.isGamePaused)
{
     if(life <= 0)
    {
        instance_destroy();
    }
}

#define scr_objShip_draw
/*** If a child object has a different draw script, it overrides 
     what is in this script!!! ****/
     
draw_self();
draw_set_colour(c_white);

if(DEBUG_FLAG)
{
    draw_text(x+30, y, "Angle: ");
    draw_text(x + 100, y, string(myAngle));
    draw_text(x+30, y + 20, "Relative: ");
    draw_text(x + 110, y + 20, string(targetAngle)); //string(point_direction(x, y, global.planetInstance.x, global.planetInstance.y)));
}
draw_healthbar(x-10, y+ 20, x + 10, y+24, (life / maxLife)*100, c_white, c_gray, c_red, 0, true, false); 
//draw_text(x - 5, y + 20, string(life));

#define scr_objShip_destroy
/*** If a child object has a different destroy script, it overrides 
     what is in this script!!! ****/
     
var cashGained = CASH_SHIP;
if(global.playerRace == "quark")
{
    cashGained *= RACE_MODIFIER_CASH;
}
global.playerCash += cashGained;
global.systemEarnedCash[global.systemSelectedIndex] += cashGained;
part_particles_create(global.ps,x,y,global.pt_cloud,10);
global.currentKills++;