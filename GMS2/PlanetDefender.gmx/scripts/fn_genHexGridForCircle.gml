///fn_genHexGridForCircle(cirX,cirY,cirWidth,hexWidth)
//                       (0,   1,   2,       3)
/*
    Creates and returns a ds_grid representing hex tile inclusion in the circle.
    A value is true if the hex tile's center point is within the circle.  This
    function assumes flat top hexagons with an "anchor" tile centered in the circle.
*/
var cirX = argument0;
var cirY = argument1;
var cirWidth = argument2;
var hexWidth = argument3;

var i,j,iMax,jMax;
i=0;
j=0;
iMax=0;
jMax=0;
var tempMap = ds_map_create(); //TODO:  probably just need a list instead of a map because I should be able to determine if a value already exists in the list.
var tempList = ds_list_create();

while(j > -1)
{ 
    while(i > -1)
    {
        var hexOffsetX = fn_getHexX(i,j,hexWidth);
        var hexOffsetY = fn_getHexY(j,hexWidth);
        var isIn = point_in_circle(cirX + hexOffsetX,
                        cirY + hexOffsetY,
                        cirX,
                        cirY,
                        cirWidth / 2);
        
        if(isIn)
        {
            //add I (+,+)
            var key = string(i) + "," + string(j);
            //calculate and add II  (-,+)
            var keyII = string(i * -1) + "," + string(j);
            //calculate and add III (-,-)
            var keyIII = string(i *-1) + "," + string(j *-1);
            //calculate and add IV  (+,-)
            var keyIV = string(i) + "," + string(j * -1);
            
            if(is_undefined(tempMap[? key])) //could use ds_map_find_value(mapId, key) instead
            {
                //could also use ds_map_add(mapId, key, value) instead.
                tempMap[? key] = true;
                ds_list_add(tempList, key); //collect the list of used i,j pairs to make later iteration simpler
            }
             if(is_undefined(tempMap[? keyII])) 
            {
                tempMap[? keyII] = true;
                ds_list_add(tempList, keyII); 
            }
             if(is_undefined(tempMap[? keyIII])) 
            {
                tempMap[? keyIII] = true;
                ds_list_add(tempList, keyIII);
            }
             if(is_undefined(tempMap[? keyIV])) 
            {
                tempMap[? keyIV] = true;
                ds_list_add(tempList, keyIV); 
            }
            if(i > iMax)
            {
                iMax = i+1;
            }
            i++;         
        }
        else
        {   
            if(i == 0)
            {                   
                j = -1;
            }
            i = -1;               
        }      
    }
    if(j > -1)
    {
        i = 0;
        if(j > jMax)
        {
            jMax = j+1;
        }
        j++;                               
    }
}                        

//iMax and jMax represent the offset to get to center (iMax,jMax) == center of map.
var g = ds_grid_create((iMax*2) + 1, (jMax*2) + 1);

for(i=0; i<ds_list_size(tempList); i++)
{
    //accessor for lists use "|" (vertical bracket)
    var s = tempList[| i]; //get the "x,y" key for further calculations
    var sLength = string_length(s);
    var commaPosition = string_pos(",", s);

    //*** strings start at position 1 ***//
    
    //get gridX
    var sX = string_copy(s, 1, commaPosition - 1);  
    var iX = real(sX);
    //get gridY
    var sY = string_copy(s, commaPosition + 1, sLength - commaPosition);
    var iY = real(sY);
    
    //set the grid value
    g[# iX+iMax, iY+jMax] = true; 
    
    //calculate and add I*  (missed items that lie on the X axis with x=0 and y=odd)
    if(abs(iY%2) == 1)
    {
        g[# ((iX+1)*-1)+iMax, iY+jMax] = true;      
    } 
}

//DESTROY TEMPORARY DS OBJECTS!  (but don't destroy the returned ds_grid)
ds_map_destroy(tempMap);
ds_list_destroy(tempList);
return g;
