// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // _objStaticParent
global.__objectDepths[1] = 0; // _objDynamicParent
global.__objectDepths[2] = 0; // DefendPlanetMapController
global.__objectDepths[3] = 0; // RacePlanetSelectionController
global.__objectDepths[4] = 0; // LaunchController
global.__objectDepths[5] = 0; // objRmResultsController
global.__objectDepths[6] = 0; // objRmCommandController
global.__objectDepths[7] = 0; // objRocketBarrageController
global.__objectDepths[8] = 0; // objPulseCannonController
global.__objectDepths[9] = 0; // _objEnemyShipParent
global.__objectDepths[10] = 0; // objShip
global.__objectDepths[11] = 0; // obj_shipLgFreight
global.__objectDepths[12] = 0; // objSpawnController
global.__objectDepths[13] = 0; // objKamikaze
global.__objectDepths[14] = 0; // objSmallBasicShip
global.__objectDepths[15] = 0; // obj_play
global.__objectDepths[16] = 0; // obj_cmdbutton
global.__objectDepths[17] = 0; // obj_mainmenubutton
global.__objectDepths[18] = 0; // obj_launchbutton
global.__objectDepths[19] = 0; // obj_zoombutton
global.__objectDepths[20] = 0; // obj_raceselect
global.__objectDepths[21] = 0; // obj_plselect
global.__objectDepths[22] = 0; // obj_raceRB
global.__objectDepths[23] = 0; // obj_raceLB
global.__objectDepths[24] = 0; // obj_plRB
global.__objectDepths[25] = 0; // obj_plLB
global.__objectDepths[26] = 0; // obj_start
global.__objectDepths[27] = 0; // objHexEmpty
global.__objectDepths[28] = 0; // _objHexTileParent
global.__objectDepths[29] = -10; // objPlanetMissileLauncher
global.__objectDepths[30] = -10; // objNuclearReactor
global.__objectDepths[31] = 0; // planet_icon
global.__objectDepths[32] = 0; // objSelectionYellow
global.__objectDepths[33] = 0; // objGalaxyBorder
global.__objectDepths[34] = -1000; // objMenuBtn
global.__objectDepths[35] = -1000; // objPauseBtn
global.__objectDepths[36] = -1000; // objMissleBarrageBtn
global.__objectDepths[37] = -1000; // objMissleBarrageBtn_zoomed
global.__objectDepths[38] = -1000; // objFocusedLaserBtn
global.__objectDepths[39] = -1000; // objFocusedLaserBtn_zoomed
global.__objectDepths[40] = -1000; // objPulseCannonBtn
global.__objectDepths[41] = -1000; // objPulseCannonBtn_zoomed
global.__objectDepths[42] = -1000; // objMissileDefenseBtn
global.__objectDepths[43] = -1000; // objMissileDefenseBtn_zoomed
global.__objectDepths[44] = -1000; // objReactorDefenseBtn
global.__objectDepths[45] = -1000; // objLowFundsText
global.__objectDepths[46] = 0; // objPlanet
global.__objectDepths[47] = 0; // objProjectile
global.__objectDepths[48] = 0; // objPlayerProjectileParent
global.__objectDepths[49] = 0; // objPlayerMissile
global.__objectDepths[50] = 0; // objBarrageRocket
global.__objectDepths[51] = 0; // objPlayerLaser
global.__objectDepths[52] = 0; // objPlayerPulseCannonProjectile
global.__objectDepths[53] = 0; // objProjectilePhotonTorpedo1
global.__objectDepths[54] = 0; // obj_mp3title
global.__objectDepths[55] = -5; // obj_devresults
global.__objectDepths[56] = -5; // obj_devcmd
global.__objectDepths[57] = 0; // obj_BarrageRocket_explosion


global.__objectNames[0] = "_objStaticParent";
global.__objectNames[1] = "_objDynamicParent";
global.__objectNames[2] = "DefendPlanetMapController";
global.__objectNames[3] = "RacePlanetSelectionController";
global.__objectNames[4] = "LaunchController";
global.__objectNames[5] = "objRmResultsController";
global.__objectNames[6] = "objRmCommandController";
global.__objectNames[7] = "objRocketBarrageController";
global.__objectNames[8] = "objPulseCannonController";
global.__objectNames[9] = "_objEnemyShipParent";
global.__objectNames[10] = "objShip";
global.__objectNames[11] = "obj_shipLgFreight";
global.__objectNames[12] = "objSpawnController";
global.__objectNames[13] = "objKamikaze";
global.__objectNames[14] = "objSmallBasicShip";
global.__objectNames[15] = "obj_play";
global.__objectNames[16] = "obj_cmdbutton";
global.__objectNames[17] = "obj_mainmenubutton";
global.__objectNames[18] = "obj_launchbutton";
global.__objectNames[19] = "obj_zoombutton";
global.__objectNames[20] = "obj_raceselect";
global.__objectNames[21] = "obj_plselect";
global.__objectNames[22] = "obj_raceRB";
global.__objectNames[23] = "obj_raceLB";
global.__objectNames[24] = "obj_plRB";
global.__objectNames[25] = "obj_plLB";
global.__objectNames[26] = "obj_start";
global.__objectNames[27] = "objHexEmpty";
global.__objectNames[28] = "_objHexTileParent";
global.__objectNames[29] = "objPlanetMissileLauncher";
global.__objectNames[30] = "objNuclearReactor";
global.__objectNames[31] = "planet_icon";
global.__objectNames[32] = "objSelectionYellow";
global.__objectNames[33] = "objGalaxyBorder";
global.__objectNames[34] = "objMenuBtn";
global.__objectNames[35] = "objPauseBtn";
global.__objectNames[36] = "objMissleBarrageBtn";
global.__objectNames[37] = "objMissleBarrageBtn_zoomed";
global.__objectNames[38] = "objFocusedLaserBtn";
global.__objectNames[39] = "objFocusedLaserBtn_zoomed";
global.__objectNames[40] = "objPulseCannonBtn";
global.__objectNames[41] = "objPulseCannonBtn_zoomed";
global.__objectNames[42] = "objMissileDefenseBtn";
global.__objectNames[43] = "objMissileDefenseBtn_zoomed";
global.__objectNames[44] = "objReactorDefenseBtn";
global.__objectNames[45] = "objLowFundsText";
global.__objectNames[46] = "objPlanet";
global.__objectNames[47] = "objProjectile";
global.__objectNames[48] = "objPlayerProjectileParent";
global.__objectNames[49] = "objPlayerMissile";
global.__objectNames[50] = "objBarrageRocket";
global.__objectNames[51] = "objPlayerLaser";
global.__objectNames[52] = "objPlayerPulseCannonProjectile";
global.__objectNames[53] = "objProjectilePhotonTorpedo1";
global.__objectNames[54] = "obj_mp3title";
global.__objectNames[55] = "obj_devresults";
global.__objectNames[56] = "obj_devcmd";
global.__objectNames[57] = "obj_BarrageRocket_explosion";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for