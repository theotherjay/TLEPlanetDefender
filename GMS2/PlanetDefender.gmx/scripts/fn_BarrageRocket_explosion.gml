#define fn_BarrageRocket_explosion
///fn_BarrageRocket_explosion(damage)
//Finds all enemy objects under this instance's bounding area and causes damage to them

//see http://yal.cc/gamemaker-collision_-into-array/ as a starting point
var x1 = bbox_left;
var y1 = bbox_top;
var x2 = bbox_right;
var y2 = bbox_bottom;
var r = sprite_width;// / 2;
var thisX = x;
var thisY = y;
with(_objEnemyShipParent)
{
    /*  This didn't work either for some reason... It might be because I'm dealing with physics (ships) vs non-physics (missile explosion) objects
    if(collision_ellipse(x1, y1, x2, y2, id ,false,true))
    {
        life -= argument0;
    }
    */
    
    //rectangle_in_circle returns 0 (no overlap), 1 (box is completely inside), 2 (partial overlap)
    var result = rectangle_in_circle(bbox_left, bbox_top, bbox_right, bbox_bottom, thisX, thisY, r);
    if(result != 0)
    {
        life -= argument0;
    }
}

////This code, once all ships were on the screen, caused every enemy ship to receive damage
////if any collision was found.
/*
if(collision_ellipse(bbox_left, bbox_top, bbox_right, bbox_bottom, _objEnemyShipParent,false,true))
{
    _objEnemyShipParent.life -= argument0;
}
*/

#define scr_BarrageRocket_explosion_animationEnd
instance_destroy();