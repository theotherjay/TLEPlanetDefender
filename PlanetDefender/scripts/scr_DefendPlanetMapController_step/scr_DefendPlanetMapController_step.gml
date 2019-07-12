if(global.planetInstance.life <= 0)
{
    global.systemBattleStatus[global.systemSelectedIndex] = "lose";
    global.systemShipKills[global.systemSelectedIndex] = global.currentKills;
    part_emitter_destroy_all(global.ps);
    part_emitter_destroy_all(global.ps_farDepth);   
     
    //Be sure to destroy emitters in objMenuBtn_leftPress too!
    
    room_goto(rm_results);
}
else if (global.currentKills >= global.currentRoomRequiredKills)
{
    global.systemBattleStatus[global.systemSelectedIndex] = "win";
    global.systemShipKills[global.systemSelectedIndex] = global.currentKills;
    part_emitter_destroy_all(global.ps);
    part_emitter_destroy_all(global.ps_farDepth);   
      
    //Be sure to destroy emitters in objMenuBtn_leftPress too!
    
    room_goto(rm_results);
}
