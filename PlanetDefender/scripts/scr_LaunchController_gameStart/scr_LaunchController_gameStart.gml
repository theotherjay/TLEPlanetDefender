scr_Particle_System(); //Initialize the particle system
randomize();

//To determine how to find app id and ad unit id, go to:
// https://support.google.com/admob/answer/7356431?hl=en


//      (ad unit id - for interstitial ads, app id)

GoogleMobileAds_Init("", "ca-app-pub-1237389989323433~1912753609");
GoogleMobileAds_UseTestAds(true, "85EB44451B6A73E947CCF2E943F2DD46");// "E9132BB7290575BF7064CDFAE7E84C29"); //This is the id of my moto z play

GoogleMobileAds_AddBannerAt("ca-app-pub-1237389989323433/1048170593", GoogleMobileAds_Banner, 0,-1000);

