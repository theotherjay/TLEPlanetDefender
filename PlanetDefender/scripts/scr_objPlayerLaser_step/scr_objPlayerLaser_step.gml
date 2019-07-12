//use targetId, damage properties passed in from fn_fireLaser to damage target.
if(instance_exists(target))
{
    var d = damage;
    if(global.playerRace == "human")
    {
        d *= RACE_MODIFIER_DAMAGE;
    }
    target.life -= d/60; //lower life by damage per frame
    //create 1 spark particle
    part_particles_create(global.ps,target.x,target.y,global.pt_spark,1);
}
