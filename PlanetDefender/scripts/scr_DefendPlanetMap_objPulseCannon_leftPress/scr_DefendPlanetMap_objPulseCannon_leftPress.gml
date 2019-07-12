if(!global.isGamePaused)
{
    global.player_powerWeapon_selected = PowerWeapon.PulseCannonType;
    global.sidebar_SelectedPowerWeaponText = fn_GetPowerWeaponText(global.player_powerWeapon_selected);
    global.opacityPulseCannonLabel = 1;
}

