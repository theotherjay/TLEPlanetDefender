//initializes cloud particle, so it is ready to be created
{
    global.pt_cloud = part_type_create();
    var pt = global.pt_cloud;
    
    //the settings for the cloud
    part_type_shape(pt, pt_shape_sphere)
    part_type_size(pt,0.2,0.4,0,0);
    part_type_colour2(pt,c_yellow,c_white);
    part_type_speed(pt,2,5,-0.1,0);
    part_type_direction(pt,0,360,0,0);
    part_type_gravity(pt,0,0);
    part_type_life(pt,5,10);
}
