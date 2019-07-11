///set global race based on sprite image
if obj_raceselect.sprite_index=spr_humanrace
    {
    global.playerRace = human;
    }
else if obj_raceselect.sprite_index=spr_ranrace
    {
    global.playerRace = rannorian;
    }
else if obj_raceselect.sprite_index=spr_quarkrace
    {
    global.playerRace = quark;
    }

///set global planet based on sprite image (load planet sprite)
if obj_plselect.sprite_index=spr_terranpl
    {
    global.playerRace = terrian;
    objPlanet.sprite_index=spr_terrian
    }
else if obj_plselect.sprite_index=spr_valcanopl
    {
    global.playerRace = valcano;
    objPlanet.sprite_index=spr_valcano
    }
else if obj_plselect.sprite_index=spr_desertpl
    {
    global.playerRace = desert;
    objPlanet.sprite_index=spr_desert
    }
else if obj_plselect.sprite_index=spr_icepl
    {
    global.playerRace = ice;
    objPlanet.sprite_index=spr_ice
    }
