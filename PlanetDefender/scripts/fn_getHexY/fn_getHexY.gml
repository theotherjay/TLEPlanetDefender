/// @description fn_getHexY(j,hexWidth)
//           (0,1)
/*
    This fn returns the y position of an equilateral hexagon 
    within a grid of hexagons where the center of the hexagon 
    at grid position (0,0) is at the origin of the cartisian plane.
*/
var j = argument0;
var hexWidth = argument1;
var r = 0.5 * hexWidth;
return ((sqrt(3) * r)/2) * j;

