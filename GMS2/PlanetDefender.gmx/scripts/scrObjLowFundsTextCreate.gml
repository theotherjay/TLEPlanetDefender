#define scrObjLowFundsTextCreate
alpha = 1;
text = "Not enough funds!";

#define scrObjLowFundsTextDraw
draw_set_halign(fa_center);

draw_text_transformed_colour(x, y, text, 1.5, 1.5, 0, c_red, c_red, c_red, c_red, alpha);

draw_set_halign(fa_left);

#define scrObjLowFundsTextStep
alpha -= 1/(room_speed * 2);
if(alpha < 0)
{
    instance_destroy();
}