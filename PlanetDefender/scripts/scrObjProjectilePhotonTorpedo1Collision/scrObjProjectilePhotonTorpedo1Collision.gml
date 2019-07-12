instance_destroy();
other.life = other.life - ENEMY_SHIP_PROJECTILE_BASEDAMAGE;
part_particles_create(global.ps, x, y, global.pt_damage2, 200);


// destroy the emitter
part_emitter_destroy(global.ps, emitter);

