if(!global.isGamePaused)
{
    global.player_powerWeapon_selected = PowerWeapon.FocusedLaserType;
    global.sidebar_SelectedPowerWeaponText = fn_GetPowerWeaponText(global.player_powerWeapon_selected);
    global.opacityFocusedLaserLabel = 1;
}

