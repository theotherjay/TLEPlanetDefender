/*** If a child object has a different step script, it overrides 
     what is in this script!!! ****/

if(!global.isGamePaused)
{
     if(life <= 0)
    {
        instance_destroy();
    }
}

