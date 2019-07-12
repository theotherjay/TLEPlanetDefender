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
