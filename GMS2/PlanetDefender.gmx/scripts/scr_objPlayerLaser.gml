#define scr_objPlayerLaser
//use in create event
depth = PROJECTILE_OVERLAY_DEPTH;
image_speed = 0.25;


#define scr_objPlayerLaser_alarm0
instance_destroy();

#define scr_objPlayerLaser_draw
if(instance_exists(target))
{
    var alphaStart = draw_get_alpha();
    
    var randX = random(1);
    if(randX < 0.5) randX = -1;
    else randX = 1;
    randX *= random(3);

    var randY = random(1);
    if(randY < 0.5) randY = -1;
    else randY = 1;
    randY *= random(3);
    
    draw_set_alpha(0.5)
    draw_line_width_colour(x,y, target.x, target.y, 2, c_red, c_red);    
    draw_line_width_colour(x,y, target.x+randX, target.y + randY, 1.5, c_fuchsia, c_fuchsia);

    draw_set_alpha(1);
    draw_sprite(spr_laserdamage_fx,image_index,target.x, target.y);
    draw_set_alpha(alphaStart);   

}

#define scr_objPlayerLaser_step
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