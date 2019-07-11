#define scr_Particle_System
///create the particle system: run this script in the gameStart script
global.ps = part_system_create();
global.ps_farDepth = part_system_create();
part_system_depth(global.ps_farDepth, 1000);

//initialize particles (when adding a new particle type, don't forget to destroy it in the scr_GameEnd)
part_spark_init();
part_cloud_init();
part_portal_init();
part_thrusters_init();
part_damage1_init();
part_photonTorpedo1_init();
part_damage2_init();

/* use the following code when you want to call a particle:
    //# value = # of particles you want to create
    part_particles_create(global.ps,x,y,global.pt_spark,1);
*/

#define part_spark_init
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

#define part_cloud_init
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
#define part_portal_init
global.pt_portal = part_type_create();

part_type_shape(global.pt_portal,pt_shape_snow);
part_type_size(global.pt_portal,0.14,0.84,0,0);
part_type_scale(global.pt_portal,0.68,3.45);
part_type_color3(global.pt_portal,12615680,3477049,8573065);
part_type_alpha3(global.pt_portal,0.20,0.20,0.05);
part_type_speed(global.pt_portal,1.10,2,-0.11,1);
part_type_direction(global.pt_portal,0,359,0,0);
part_type_gravity(global.pt_portal,0,270);
part_type_orientation(global.pt_portal,0,0,0,0,1);
part_type_blend(global.pt_portal,1);
part_type_life(global.pt_portal,20,30);
#define part_thrusters_init
global.pt_thrusters = part_type_create();
part_type_shape(global.pt_thrusters ,pt_shape_pixel);
part_type_size(global.pt_thrusters ,0.10,3,0,0);
part_type_scale(global.pt_thrusters ,1,1);
part_type_color1(global.pt_thrusters ,16744576);
part_type_alpha1(global.pt_thrusters ,1);
part_type_orientation(global.pt_thrusters ,30,40,0,0,1);
part_type_blend(global.pt_thrusters ,1);
part_type_life(global.pt_thrusters ,10,60);
#define part_damage1_init
global.pt_damage1 = part_type_create();
part_type_shape(global.pt_damage1,pt_shape_line);
part_type_size(global.pt_damage1,0.05,0.50,0,0);
part_type_color3(global.pt_damage1,8454143,16512,8013767);
part_type_alpha3(global.pt_damage1,0.80,0.50,0.10);
part_type_speed(global.pt_damage1,1.51,4.16,0.15,0);
part_type_direction(global.pt_damage1,0,359,0,0);
part_type_gravity(global.pt_damage1,0,270);
part_type_orientation(global.pt_damage1,0,0,0,0,1);
part_type_blend(global.pt_damage1,1);
part_type_life(global.pt_damage1,10,20);


#define part_photonTorpedo1_init
global.pt_photonTorpedo1 = part_type_create();
part_type_shape(global.pt_photonTorpedo1,pt_shape_sphere);
part_type_size(global.pt_photonTorpedo1,0.10,0.49,0,0);
part_type_scale(global.pt_photonTorpedo1,1,1);
part_type_color3(global.pt_photonTorpedo1,655977,6247501,8454016);
part_type_alpha3(global.pt_photonTorpedo1,0.30,0.10,0.05);
part_type_speed(global.pt_photonTorpedo1,1,2,-0.02,0);
part_type_direction(global.pt_photonTorpedo1,0,359,0,0);
part_type_orientation(global.pt_photonTorpedo1,0,0,0,0,0);
part_type_blend(global.pt_photonTorpedo1,1);
part_type_life(global.pt_photonTorpedo1,1,54);

#define part_damage2_init
global.pt_damage2 = part_type_create();
part_type_shape(global.pt_damage2,pt_shape_line);
part_type_size(global.pt_damage2,0.10,0.40,0,0);
part_type_scale(global.pt_damage2,2,2.50);
part_type_color3(global.pt_damage2,4931740,4476795,3672696);
part_type_alpha3(global.pt_damage2,0.30,0.10,0.05);
part_type_speed(global.pt_damage2,1.52,4.82,0.09,0);
part_type_direction(global.pt_damage2,0,359,0,0);
part_type_orientation(global.pt_damage2,0,0,0,0,1);
part_type_blend(global.pt_damage2,1);
part_type_life(global.pt_damage2,5,73);