/// @description create the particle system: run this script in the gameStart script
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

