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

