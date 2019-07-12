//Negative is closer to user, positive is further from user.  This setting ensures 
//everything drawn in the controller's draw event sits on top game room objects.
depth = GUI_OVERLAY_DEPTH; 
display_set_gui_size(GAME_WIDTH, GAME_HEIGHT);

playerRaceText = "";
raceBonus = "";
switch(global.playerRace)
{
    case "rannorian":
        raceBonus = "Increased energy regen";
        playerRaceText = "Rannorian";
        break;
    case "quark":
        raceBonus = "Increased money gain";
        playerRaceText = "Quark";
        break;
    case "human":
        raceBonus = "Higher weapon damage";
        playerRaceText = "Human";
        break;
}
