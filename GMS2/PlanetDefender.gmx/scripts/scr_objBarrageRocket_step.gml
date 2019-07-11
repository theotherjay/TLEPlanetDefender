scr_objPlayerMissile_step();

var distanceToTarget = point_distance(x,y, targetX, targetY);
if(distanceToTarget < 10)
{
    instance_destroy();
    var barrageRocketExplosion = instance_create(x, y, obj_BarrageRocket_explosion);
    var d = damage;
    if(global.playerRace == "human")
    {
        d *= RACE_MODIFIER_DAMAGE;
    }
    fn_BarrageRocket_explosion(d);
}
