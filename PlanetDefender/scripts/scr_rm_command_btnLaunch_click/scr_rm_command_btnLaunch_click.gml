//1. Setup parameters for selected planet (planet type, etc)
if(global.systemSelectedIndex > -1)
{
    if(global.systemBattleStatus[global.systemSelectedIndex] != "")
    {
        var i;
        for(i=0;i<array_length_1d(global.systemBattleStatus); i++)
        {
            if(global.systemBattleStatus[i] == "")
            {
                global.systemSelectedIndex = i;
                break;
            }
        }
    }
    //2. Start instance
    room_goto(DefendPlanetMap);
}

