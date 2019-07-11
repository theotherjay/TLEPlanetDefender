///fn_findTarget(x,  y,   searchDiameter)
//              arg0,arg1,arg2


var temp = instance_nearest(argument0, argument1, _objEnemyShipParent);
if(temp != noone)
{
    var dist = point_distance(argument0, argument1, temp.x, temp.y);
    if(dist <= argument2)
    {   
        return temp;
    }
}
return noone;
    
