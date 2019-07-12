//Create a collection of systems with random placements on the screen
//Default is 10 systems (each has a single planet)

global.systemSelectedIndex = -1;
    
//Initialize planet locations and types
if(global.rm_command_initialized == false)
{
    //(Re)Initialize global arrays for planet properties
    global.systemX = 0;
    global.systemY = 0;
    global.systemBattleStatus = 0;
    global.systemDifficulty = 0;
    global.systemEarnedCash = 0;
    global.systemShipKills = 0;
    
    var systemCount = 10;
    var systemGridH = __view_get( e__VW.HView, 0 ) / 12;
    var systemGridW = __view_get( e__VW.WView, 0 ) / 12;
    var systemMinDistance = 50; // The minimum distance between randomly placed systems.
    var i;

    for(i=0; i< systemCount; i++)
    {
        //1. Position the system
        var isDone = false;      
        while(isDone == false)
        {                      
            var isValid = true; 
            var galaxyBorder = instance_find(objGalaxyBorder, 0);
            var pointX = irandom_range(galaxyBorder.bbox_left + 50, galaxyBorder.bbox_right - 50);
            var pointY = irandom_range(galaxyBorder.bbox_top + 50, galaxyBorder.bbox_bottom - 50);
            if(i > 0)
            {        
                var j;
                for(j= 0 ; j < array_length_1d(global.systemX); j++)
                {
                   var pointDistance = point_distance(global.systemX[j], global.systemY[j], pointX, pointY);
                   if(systemMinDistance > pointDistance)
                   { 
                        isValid = false;
                        break;                                            
                   }            
                }
            }
            if(isValid)
            {
                global.systemX[i] = pointX;
                global.systemY[i] = pointY;
                isDone = true;
            }
        }
    
        
        //2. Initialize other properties
        global.systemBattleStatus[i] = "";
        global.systemDifficulty[i] = i+1;   
        global.systemEarnedCash[i] = 0;
        global.systemShipKills[i] = 0;
        
        var planetType = random_range(0,4);  
        if(planetType > 3)
        {
            global.systemPlanetType[i] = spr_ice_icon;
        }
        else if(planetType > 2)
        {
            global.systemPlanetType[i]  = spr_desert_icon;
        }
        else if(planetType > 1)
        {
            global.systemPlanetType[i]  = spr_volcano_icon;
        }
        else if(planetType >= 0)
        {
            global.systemPlanetType[i]  = spr_terrain_icon;
        }    
    }   
    global.rm_command_initialized = true;
}

//Create planet instances
var i;
for(i=0; i< array_length_1d(global.systemX); i++)
{
    var planetSystem = instance_create(global.systemX[i], global.systemY[i], planet_icon);
    
    with(planetSystem)
    {
        //index property is used in:
        // - scr_planet_icon_click: when clicked, global.systemSelectedIndex is set to this value
        // - scr_DefendPlanetMapController_step: when player wins, sets global.systemBattleStatus[global.systemSelectedIndex] = "win".
        index = i;
                  
        if(global.systemBattleStatus[i] == "lose")
        {
            sprite_index = spr_planet_defeated_icon;
        }
        else if (global.systemBattleStatus[i] == "win")
        {
            sprite_index = spr_planet_win_icon;
        }
        else
        {
            sprite_index = global.systemPlanetType[i];
        }
    }                  
}

var i = irandom_range(1, 3);
if(i == 1)
{
    GoogleMobileAds_ShowBanner();
}
