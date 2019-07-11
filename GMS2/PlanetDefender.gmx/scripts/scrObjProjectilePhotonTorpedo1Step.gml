#define scrObjProjectilePhotonTorpedo1Step
if(!global.isGamePaused) //only execute when not paused
{ 
    phy_rotation = -angle;  
    if(phy_speed < 5)
    {
        physics_apply_local_force(0,0, 5,0);
    }
    
    part_emitter_region(global.ps,emitter,x,x,y,y,1,0);
}

#define scrObjProjectilePhotonTorpedo1Collision
instance_destroy();
other.life = other.life - ENEMY_SHIP_PROJECTILE_BASEDAMAGE;
part_particles_create(global.ps, x, y, global.pt_damage2, 200);


// destroy the emitter
part_emitter_destroy(global.ps, emitter);

#define scrObjProjectilePhotonTorpedo1Create
emitter = part_emitter_create(global.ps);
part_emitter_stream(global.ps, emitter, global.pt_photonTorpedo1, 10);