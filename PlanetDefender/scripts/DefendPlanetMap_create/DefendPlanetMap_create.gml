show_debug_overlay(DEBUG_FLAG);

//Define global variables (or reset them)

global.isGamePaused = false;
global.currentKills = 0;
//global.currentRoomRequiredKills = 1; //This gets set by fn_GenerateSpawns
global.objPlanetOverlay = PlanetOverlayState.Hidden;
global.selectedItemToPurchase = PurchaseOption.Missile;
global.opacityMissileBarrageLabel = 0;
global.opacityFocusedLaserLabel = 0;
global.opacityPulseCannonLabel = 0;
global.debugText = "";


global.sideBarPadding = 30;


/*  Player properties */
global.player_powerWeapon_selected = PowerWeapon.RocketBarrageType;
global.sidebar_SelectedPowerWeaponText = fn_GetPowerWeaponText(global.player_powerWeapon_selected);

/*  Base and actual damage amounts for player */
global.player_missilebase_basedamage = PLAYER_MISSILEBASE_BASEDAMAGE;
global.player_missilebase_actualdamage = global.player_missilebase_basedamage;
global.player_rocketbarrage_basedamage = PLAYER_ROCKETBARRAGE_BASEDAMAGE;
global.player_rocketbarrage_actualdamage = global.player_rocketbarrage_basedamage;
global.player_pulsecannon_basedamage = PLAYER_PULSECANNON_BASEDAMAGE;
global.player_pulsecannon_actualdamage = global.player_pulsecannon_basedamage;

//Load planet etc. based on global.planet variable
if global.playerPlanetSelectedType = "terrian"
    {
    objPlanet.sprite_index=spr_terrian
    }
else if global.playerPlanetSelectedType = "valcano"
    {
    objPlanet.sprite_index=spr_valcano
    }
else if global.playerPlanetSelectedType = "desert"
    {
    objPlanet.sprite_index=spr_desert
    }
else if global.playerPlanetSelectedType = "ice"
    {
    objPlanet.sprite_index=spr_ice
    }
    
GoogleMobileAds_HideBanner();  
//see http://gamemaker.info/en/manual/405_11_views for calculating placement based on view and viewport
// view_xport[i] - x position of the viewport in the drawing region
// view_wport[i] - width of the viewport in the drawing region


