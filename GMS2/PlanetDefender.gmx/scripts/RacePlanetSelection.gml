///Race Select RIGHT Arrow
with (instance_position(mouse_x, mouse_y, obj_raceRB))
{
if obj_raceselect.sprite_index=spr_humanrace
    {
    global.playerRace = "rannorian"
    obj_raceselect.sprite_index=spr_ranrace
    }
else if obj_raceselect.sprite_index=spr_ranrace
    {
    global.playerRace = "quark"
    obj_raceselect.sprite_index=spr_quarkrace
    }
else if obj_raceselect.sprite_index=spr_quarkrace
    {
    global.playerRace = "human"
    obj_raceselect.sprite_index=spr_humanrace
    }
}

///Race Select LEFT Arrow
with (instance_position(mouse_x, mouse_y, obj_raceLB))
{
if obj_raceselect.sprite_index=spr_humanrace
    {
    global.playerRace = "quark"
    obj_raceselect.sprite_index=spr_quarkrace
    }
else if obj_raceselect.sprite_index=spr_quarkrace
    {
    global.playerRace = "rannorian"
    obj_raceselect.sprite_index=spr_ranrace
    }
else if obj_raceselect.sprite_index=spr_ranrace
    {
    global.playerRace = "human"
    obj_raceselect.sprite_index=spr_humanrace
    }
}

