instance_destroy();
other.life = other.life - ENEMY_SHIP_PROJECTILE_BASEDAMAGE;
part_particles_create(global.ps, x, y, global.pt_damage1, 20);

other.isHitAnimationLengthCurrent = 0;
other.isHit = true;
