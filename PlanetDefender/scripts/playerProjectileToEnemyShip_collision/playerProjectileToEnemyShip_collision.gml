//Todo:  On specific object creation, set weapon damage variable. 
//       Can use that weapon damage variable here... that's one way to do it.

//

var d = damage;
if(global.playerRace == "human")
{
    d *= RACE_MODIFIER_DAMAGE;
}
other.life = other.life - d;//self.damage; //damage property should be set in firePlanetMissile function
instance_destroy(); 
