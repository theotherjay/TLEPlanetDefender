maxLife = PLAYER_PLANET_DEFAULTLIFE;
maxEnergy = PLAYER_PLANET_MAXENERGY;
life = maxLife;
energy = maxEnergy;
nuclearReactorCount = 0;
isHit = false;
isHitAnimationLength = 30;
isHitAnimationLengthCurrent = 0;

global.planetInstance = id;

//TODO: base the spawn types on planet info (need to figure out how to randomize spawn types ...)
var maxSpawnType = 0;
if(global.systemSelectedIndex + 1 > (array_length_1d(global.systemDifficulty) / 3)*2)
{
    //Hardest third of levels
    maxSpawnType = 2;
}
else if(global.systemSelectedIndex + 1 > (array_length_1d(global.systemDifficulty) / 3))
{
    //Medium third of levels
    maxSpawnType = 1;
}
fn_GenerateSpawns(global.systemDifficulty[global.systemSelectedIndex], 0, maxSpawnType); //I've placed this call here because we need the planet instance created first.
    
var hexWidth = sprite_get_width(spr_hextile);
global.playerPlanet_hexGrid = fn_genHexGridForCircle(x, y, bbox_right -bbox_left, hexWidth );
var gridWidth = ds_grid_width(global.playerPlanet_hexGrid);
var gridHeight = ds_grid_height(global.playerPlanet_hexGrid);
for(var i =0; i< gridWidth; i++)
{
    for(var j=0; j< gridHeight; j++)
    {

        if(!is_undefined(global.playerPlanet_hexGrid[# i,j])) //should contain 'true' otherwise will be undefined
        {
            var isTile = global.playerPlanet_hexGrid[# i,j];
            if(isTile == true)
            {
                var gridX = i - floor(gridWidth / 2);
                var gridY = j - floor(gridHeight / 2);
                
                var hX = x + fn_getHexX(gridX, j, hexWidth);
                var hY = y + fn_getHexY(gridY, hexWidth);
                var hexTile = instance_create(hX, hY, objHexEmpty);
                hexTile.tileXY = string(gridX) + "," + string(gridY);
                global.playerPlanet_hexGrid[# i,j] = hexTile;
            }
        }
    }
}
instance_deactivate_object(_objHexTileParent);
