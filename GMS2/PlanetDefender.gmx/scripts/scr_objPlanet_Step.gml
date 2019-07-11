if(!global.isGamePaused)
{
    if(energy < maxEnergy)
    {
        if(global.playerRace == "rannorian")
        {
            energy += RACE_MODIFIER_ENERGY +  (RACE_MODIFIER_ENERGY * nuclearReactorCount);
        }
        else
        {
            energy += 1 + nuclearReactorCount;
        }    
    }
    
    //Update the collision counter (outside of draw event so timing is consistent)
    if(isHit)
    {
        isHitAnimationLengthCurrent++
        if(isHitAnimationLengthCurrent > isHitAnimationLength)
        {
            isHit = false;
        }
    }
}
