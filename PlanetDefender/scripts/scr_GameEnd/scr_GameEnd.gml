    
    //destroy all of the particle system and particle types to prevent memory leak
    part_system_destroy(global.ps);
    part_type_destroy(global.pt_spark);
    part_type_destroy(global.pt_cloud);
    part_type_destroy(global.pt_portal);
    part_emitter_destroy_all(global.ps);
