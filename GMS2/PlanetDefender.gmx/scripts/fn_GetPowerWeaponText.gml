///fn_GetPowerWeaponText(PowerWeaponEnum)
var result = "";
switch(argument0)
{
    case PowerWeapon.RocketBarrageType:
        result = "Rocket Barrage";
        break;
    case PowerWeapon.FocusedLaserType:
        result = "Focused Laser";
        break;
     case PowerWeapon.PulseCannonType:
        result = "Pulse Cannon";
        break;
     default:
        result = "unknown";
        break;
}

return result;
