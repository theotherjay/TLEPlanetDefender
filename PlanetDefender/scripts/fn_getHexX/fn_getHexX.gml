/// @description fn_getHexX(i,j,hexWidth)
//           (0,1,2)
/*
    This fn returns the x position of an equilateral hexagon within 
    a grid of hexagons where the center of the hexagon at grid 
    position(0,0) is at the origin of the cartisian plane.
*/
var i = argument0;
var j = argument1;
var hexWidth = argument2;
var r = 0.5 * hexWidth;
return (abs(j%2) * 1.5 * r) + (i * 3 * r);


