
if(isHit)
{
    var xRand = 0;
    var yRand = 0;
    if(isHitAnimationLengthCurrent > (isHitAnimationLength / 2))
    {
       xRand = irandom_range(-2, 2);
       yRand = irandom_range(-2, 2);
    }
    else
    {
        xRand = irandom_range(-4, 4);
        yRand = irandom_range(-4, 4);
    }
    
    draw_sprite_ext(sprite_index, image_index, x + xRand, y + yRand, 1, 1, image_angle, image_blend, image_alpha);  
}
else
{
    draw_self();
}
draw_set_colour(c_white);
//draw_text(x-60, y + 140, "Health: ");
//draw_text(x + 20, y + 140, string(life));
draw_healthbar(x-60, y+ 152, x + 60, y+160, (life / maxLife)*100, c_white, c_gray, c_green, 0, true, false); 
draw_set_colour(c_yellow);

