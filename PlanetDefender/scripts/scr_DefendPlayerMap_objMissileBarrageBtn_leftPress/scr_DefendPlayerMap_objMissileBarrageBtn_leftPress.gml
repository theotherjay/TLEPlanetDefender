if(!global.isGamePaused)
{ 
    global.player_powerWeapon_selected = PowerWeapon.RocketBarrageType;
    global.sidebar_SelectedPowerWeaponText = fn_GetPowerWeaponText(global.player_powerWeapon_selected);
    global.opacityMissileBarrageLabel = 1;
}

