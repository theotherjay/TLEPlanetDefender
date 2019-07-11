///script to select race and planet

if obj_raceRB.leftPressFlag = true;
    {
         if obj_raceselect.sprite_index=spr_humanrace
           {
           obj_raceselect.sprite_index=spr_ranrace
           }
         else if obj_raceselect.sprite_index=spr_ranrace
           {
           obj_raceselect.sprite_index=spr_quarkrace
           }
         else if obj_raceselect.sprite_index=spr_quarkrace
           {
           obj_raceselect.sprite_index=spr_humanrace
           }
    }
    

    

