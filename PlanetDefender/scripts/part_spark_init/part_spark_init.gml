//initializes spark particle, so it is ready to be created
{
    global.pt_spark = part_type_create();
    var pt = global.pt_spark;
    
    //the settings for the spark
    part_type_shape(pt, pt_shape_line)
    part_type_size(pt,0.05,0.1,0,0);
    part_type_colour2(pt,c_white,c_yellow);  //blend from white to yellow
    part_type_speed(pt,2,5,-0.1,0);
    part_type_direction(pt,0,360,0,0);
    part_type_orientation(pt,0,359,0,0,0);
    part_type_gravity(pt,0,0);
    part_type_life(pt,5,10);
}

