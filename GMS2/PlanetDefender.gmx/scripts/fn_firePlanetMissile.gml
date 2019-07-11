///fn_firePlanetMissile(x,   y,   targetX, targetY, missileName, damage)
//                   arg0 arg1 arg2     arg3        arg4         arg5    
var targetAngle = point_direction(argument0, argument1, argument2, argument3);
var missile = instance_create(argument0, argument1, argument4);

with(missile)
{
    depth = PROJECTILE_OVERLAY_DEPTH;
    angle = targetAngle;
    
    //used by missiles that explode once reaching target
    targetX = argument2; 
    targetY = argument3;
    
    //Sets the missile's damage amount
    damage = argument5;
}
return missile;
